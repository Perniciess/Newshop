import { useState, ChangeEvent, FormEvent } from 'react';
import { useRouter } from 'next/navigation';
import { useRegisterMutation } from '@/redux/features/authApiSlice';
import { toast } from 'react-toastify';

export default function useRegister() {
	const router = useRouter();
	const [register, { isLoading }] = useRegisterMutation();

	const [formData, setFormData] = useState({
		login: '',
		name: '',
		email: '',
		password: '',
		re_password: '',
	});

	const { login, name, email, password, re_password } = formData;

	const onChange = (event: ChangeEvent<HTMLInputElement>) => {
		const { name, value } = event.target;

		setFormData({ ...formData, [name]: value });
	};

	const onSubmit = (event: FormEvent<HTMLFormElement>) => {
		event.preventDefault();

		register({ login, name, email, password, re_password })
			.unwrap()
			.then(() => {
				toast.success('Пожалуйста проверьте вашу почту для подтверждения аккаунта');
				router.push('/auth/login');
			})
			.catch(() => {
				toast.error('Ошибка');
			});
	};

	return {
		login,
		name,
		email,
		password,
		re_password,
		isLoading,
		onChange,
		onSubmit,
	};
}
