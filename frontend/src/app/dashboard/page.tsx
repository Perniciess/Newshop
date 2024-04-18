'use client'

import { useRetrieveUserQuery } from '@/redux/features/authApiSlice'
import { List, Spinner } from '@/components/common'
import Link from 'next/link'

export default function Page() {
	const { data: user, isLoading, isFetching } = useRetrieveUserQuery()

	const isModer = () => (
		<>
			<div className={'flex justify-start'}>
				<Link href='/addproduct'>
					<button className='rounded-md bg-blue-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-blue-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2'>
						Добавить товар
					</button>
				</Link>
			</div>
		</>
	)

	const config = [
		{
			label: 'Логин',
			value: user?.login,
		},
		{
			label: 'Имя',
			value: user?.name,
		},
		{
			label: 'Электронная почта',
			value: user?.email,
		},
	]

	if (isLoading || isFetching) {
		return (
			<div className='flex justify-center my-8'>
				<Spinner lg />
			</div>
		)
	}

	return (
		<>
			<header className='bg-blue-100 relative rounded-3xl'>
				<div className='mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8'>
					<h1 className='text-3xl font-bold tracking-tight text-gray-900'>
						Информация об пользователе
					</h1>
				</div>
			</header>
			<main className='mx-auto max-w-7xl py-6 my-8 sm:px-6 lg:px-8'>
				<List config={config} />
			</main>
			{user?.is_staff ? isModer() : null}
		</>
	)
}
