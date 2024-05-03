'use client'

import React, { useState, useEffect } from 'react'
import axios from 'axios'
import { useRetrieveUserQuery } from '@/redux/features/authApiSlice'
import NotFound from '../not-found'

export default function ProductForm() {
	const { data: user } = useRetrieveUserQuery()

	const [name, setName] = useState('')
	const [price, setPrice] = useState(0)
	const [brand, setBrand] = useState('')
	const [type, setType] = useState('')
	const [img, setImage] = useState<File | null>(null)
	axios.defaults.xsrfHeaderName = 'X-CSRFToken'
	axios.defaults.xsrfCookieName = 'csrftoken'
	const handleNameChange = (event: React.ChangeEvent<HTMLInputElement>) => {
		setName(event.target.value)
	}
	const handlePriceChange = (event: React.ChangeEvent<HTMLInputElement>) => {
		setPrice(parseInt(event.target.value, 10))
	}
	const handleBrandChange = (event: React.ChangeEvent<HTMLInputElement>) => {
		setBrand(event.target.value)
	}
	const handleTypeChange = (event: React.ChangeEvent<HTMLInputElement>) => {
		setType(event.target.value)
	}
	const handleImageChange = (event: React.ChangeEvent<HTMLInputElement>) => {
		setImage(event.target.files ? event.target.files[0] : null)
	}
	useEffect(() => {
		if (img && name && price && brand && type) {
			const formData = new FormData()
			formData.append('name', name)
			formData.append('price', price.toString())
			formData.append('brand', brand)
			formData.append('type', type)
			formData.append('img', img)
			axios
				.post(`${process.env.NEXT_PUBLIC_HOST}/api/products/add/`, formData, {
					withCredentials: true,
					headers: {
						'Content-Type': 'multipart/form-data',
					},
				})
				.then((response) => {
					console.log('Product added successfully', response)
				})
				.catch((error) => {
					console.error('Error adding product', error)
				})
		}
	}, [img, name, price, brand, type])
	const isModer = () => (
		<>
			<form className='flex flex-col gap-4 justify-between'>
				<label htmlFor='name' className='font-Inter text-xl'>
					Название
				</label>
				<input
					type='text'
					value={name}
					onChange={handleNameChange}
					className='border rounded p-2'
				/>
				<label htmlFor='price' className='font-Inter text-xl'>
					Цена
				</label>
				<input
					type='number'
					value={price}
					onChange={handlePriceChange}
					className='border rounded p-2'
				/>
				<label htmlFor='brand' className='font-Inter text-xl'>
					Бренд
				</label>
				<input
					type='text'
					value={brand}
					onChange={handleBrandChange}
					className='border rounded p-2'
				/>
				<label htmlFor='type' className='font-Inter text-xl'>
					Тип
				</label>
				<input
					type='text'
					value={type}
					onChange={handleTypeChange}
					className='border rounded p-2'
				/>
				<label htmlFor='img' className='font-Inter text-xl'>
					Изображение
				</label>
				<input
					type='file'
					onChange={handleImageChange}
					className=' rounded p-2'
				/>
				<button
					type='submit'
					className='rounded-md bg-blue-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-blue-500 '
				>
					Добавить товар
				</button>
			</form>
		</>
	)
	return <div>{user?.is_staff ? isModer() : NotFound()}</div>
}
