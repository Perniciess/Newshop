import { ChangeEvent, FormEvent } from 'react'
import { Input } from '@/components/forms'

interface Config {
	labelText: string
	labelId: string
	type: string
	value: string
	link?: {
		linkText: string
		linkUrl: string
	}
	required?: boolean
}

interface Props {
	config: Config[]
	isLoading: boolean
	btnText: string
	onChange: (event: ChangeEvent<HTMLInputElement>) => void
	onSubmit: (event: FormEvent<HTMLFormElement>) => void
}

export default function Form({
	config,
	isLoading,
	btnText,
	onChange,
	onSubmit,
}: Props) {
	return (
		<form className='space-y-6' onSubmit={onSubmit}>
			{config.map((input) => (
				<Input
					key={input.labelId}
					labelId={input.labelId}
					type={input.type}
					onChange={onChange}
					value={input.value}
					link={input.link}
					required={input.required}
				>
					{input.labelText}
				</Input>
			))}

			<div className={'flex justify-center'}>
				<button
					type='submit'
					className='rounded-md bg-blue-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-blue-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600'
					disabled={isLoading}
				>
					{`${btnText}`}
				</button>
			</div>
		</form>
	)
}
