'use client';

import { useEffect } from 'react';
import { useRouter } from 'next/navigation';
import { useActivationMutation } from '@/redux/features/authApiSlice';
import { toast } from 'react-toastify';

interface Props {
	params: {
		uid: string;
		token: string;
	};
}

export default function Page({ params }: Props) {
	const router = useRouter();
	const [activation] = useActivationMutation();

	useEffect(() => {
		const { uid, token } = params;

		activation({ uid, token })
			.unwrap()
			.then(() => {
				toast.success('Аккаунт активирован');
			})
			.catch(() => {
				toast.error('Не удалось активировать аккаунт');
			})
			.finally(() => {
				router.push('/auth/login');
			});
	}, []);

	return (
		<div className='flex min-h-full flex-1 flex-col justify-center px-6 py-12 lg:px-8'>
			<div className='sm:mx-auto sm:w-full sm:max-w-sm'>
				<h1 className='mt-10 text-center text-2xl font-bold leading-9 tracking-tight text-gray-900'>
					Активируем ваш аккаунт
				</h1>
			</div>
		</div>
	);
}
