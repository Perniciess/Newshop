import { useState, ChangeEvent, FormEvent } from 'react';
import { useResetPasswordMutation } from '@/redux/features/authApiSlice';
import { toast } from 'react-toastify';

export default function useResetPassword() {
	const [resetPassword, { isLoading }] = useResetPasswordMutation();

	const [email, setEmail] = useState('');

	const onChange = (event: ChangeEvent<HTMLInputElement>) => {
		setEmail(event.target.value);
	};

	const onSubmit = (event: FormEvent<HTMLFormElement>) => {
		event.preventDefault();

		resetPassword(email)
			.unwrap()
			.then(() => {
				toast.success('Проверьте электронную почту для сброса пароля');
			})
			.catch(() => {
				toast.error('Ошибка');
			});
	};

	return {
		email,
		isLoading,
		onChange,
		onSubmit,
	};
}
