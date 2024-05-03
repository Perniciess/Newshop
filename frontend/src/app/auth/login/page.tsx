import Link from 'next/link'
import { LoginForm } from '@/components/forms'
import type { Metadata } from 'next'

export const metadata: Metadata = {
	title: 'ITEMCLUB | Авторизация',
	description: 'Авторизация',
}

export default function Page() {
	return (
		<div className='flex min-h-full flex-1 flex-col justify-center px-6 py-12 lg:px-8'>
			<div className='sm:mx-auto sm:w-full sm:max-w-sm'>
				<h2 className='mt-10 text-center text-2xl font-bold leading-9 tracking-tight text-gray-900'>
					Авторизация
				</h2>
			</div>

			<div className='mt-10 sm:mx-auto sm:w-full sm:max-w-sm'>
				<LoginForm />

				<p className='mt-10 text-center text-sm text-gray-500'>
					Нет аккаунта?{' '}
					<Link
						href='/auth/register'
						className='font-semibold leading-6 text-blue-600 hover:text-blue-900'
					>
						Регистрация
					</Link>
				</p>
			</div>
		</div>
	)
}
