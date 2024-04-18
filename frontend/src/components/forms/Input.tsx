import React, { ChangeEvent } from 'react'
import Link from 'next/link'

interface Props {
	labelId: string
	type: string
	onChange: (event: ChangeEvent<HTMLInputElement>) => void
	value: string
	children: React.ReactNode
	link?: {
		linkText: string
		linkUrl: string
	}
	required?: boolean
}

export default function Input({
	labelId,
	type,
	onChange,
	value,
	children,
	link,
	required = false,
}: Props) {
	return (
		<div>
			<div className={'flex justify-center'}>
				<label htmlFor={labelId} className='block text-m leading-6 font-Inter'>
					{children}
				</label>
				{link && (
					<div className='text-sm flex justify-center ml-6 items-center'>
						<Link
							className='font-semibold text-blue-600 hover:text-blue-500'
							href={link.linkUrl}
						>
							{link.linkText}
						</Link>
					</div>
				)}
			</div>

			<div className='mt-2 flex justify-center'>
				<input
					id={labelId}
					className='rounded xs:w-full w-1/3 border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-blue-600 sm:text-sm sm:leading-6 indent-3'
					name={labelId}
					type={type}
					onChange={onChange}
					value={value}
					required={required}
				/>
			</div>
		</div>
	)
}
