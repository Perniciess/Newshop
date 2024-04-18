'use client'

import { Form } from '@/components/forms'
import { useRegister } from '@/hooks'

export default function RegisterForm() {
	const {
		login,
		name,
		email,
		password,
		re_password,
		isLoading,
		onChange,
		onSubmit,
	} = useRegister()

	const config = [
		{
			labelText: 'Логин',
			labelId: 'login',
			type: 'text',
			value: login,
			required: true,
		},
		{
			labelText: 'Имя',
			labelId: 'name',
			type: 'text',
			value: name,
			required: true,
		},
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
			required: true,
		},
		{
			labelText: 'Повторите пароль',
			labelId: 're_password',
			type: 'password',
			value: re_password,
			required: true,
		},
	]

	return (
		<Form
			config={config}
			isLoading={isLoading}
			btnText='Регистрация'
			onChange={onChange}
			onSubmit={onSubmit}
		/>
	)
}
