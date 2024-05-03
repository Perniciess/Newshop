'use client';

import { useLogin } from '@/hooks';
import { Form } from '@/components/forms';

export default function LoginForm() {
	const { email, password, isLoading, onChange, onSubmit } = useLogin();

	const config = [
		{
			labelText: 'Электронная почта',
			labelId: 'email',
			type: 'email',
			value: email,
			required: true,
		},
		{
			labelText: 'Пароль',
			labelId: 'password',
			type: 'password',
			value: password,
			link: {
				linkText: 'Забыли пароль?',
				linkUrl: '/password-reset',
			},
			required: true,
		},
	];

	return (
		<Form
			config={config}
			isLoading={isLoading}
			btnText='Авторизация'
			onChange={onChange}
			onSubmit={onSubmit}
		/>
	);
}
