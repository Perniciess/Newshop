import { Product, Products, Token, User, Type, Brand } from '@/utils/types'
import { apiSlice } from '../services/apiSlice'


const authApiSlice = apiSlice.injectEndpoints({
	endpoints: builder => ({
		retrieveUser: builder.query<User, void>({
			query: () => '/users/me/',
		}),
		GetAccessToken: builder.query<Token, void>({
			query: () => '/jwt/token/',
		}),
		deleteProduct: builder.mutation({
			query: ({id}) => ({
				url: `/products/${id}/delete/`,
				method: 'DELETE',
			}),
		}),
	
		login: builder.mutation({
			query: ({ email, password }) => ({
				url: '/jwt/create/',
				method: 'POST',
				body: { email, password },
			}),
		}),
		register: builder.mutation({
			query: ({
				login,
				name,
				email,
				password,
				re_password,
			}) => ({
				url: '/register/',
				method: 'POST',
				body: { login, name, email, password, re_password },
			}),
		}),
		verify: builder.mutation({
			query: () => ({
				url: '/jwt/verify/',
				method: 'POST',
			}),
		}),
		logout: builder.mutation({
			query: () => ({
				url: '/logout/',
				method: 'POST',
			}),
		}),
		activation: builder.mutation({
			query: ({ uid, token }) => ({
				url: '/users/activation/',
				method: 'POST',
				body: { uid, token },
			}),
		}),
		resetPassword: builder.mutation({
			query: email => ({
				url: '/users/reset_password/',
				method: 'POST',
				body: { email },
			}),
		}),
		resetPasswordConfirm: builder.mutation({
			query: ({ uid, token, new_password, re_new_password }) => ({
				url: '/users/reset_password_confirm/',
				method: 'POST',
				body: { uid, token, new_password, re_new_password },
			}),
		}),
		GetProducts: builder.query<Products[], void>({
			query: () => `/products/`,
		}),
		getProduct: builder.query<Product[], {id: number}>({
			query: ({id}) => ({
				url: `/products/${id}/`,
				method: 'GET',
			}),
		}),
		getTypes: builder.query<Type[], {type: number}>({
			query: ({type}) => ({
				url: `products/${type}/type/`,
				method: 'GET',
			})
		}),
		getBrand: builder.query<Brand[], {brand: number}>({
			query: ({brand}) => ({
				url: `products/${brand}/brand/`,
				method: 'GET',
			})
		}),
		addToCart: builder.mutation({
			query: ({ product_id }) => ({
				url: `/cart/add/${product_id}/`,
				method: 'POST',
				body: { product_id },
			}),
		}),
		getCart: builder.query<Products[], void>({
			query: () => ({
				url: `cart/user/`,
				method: 'GET',
			})
		}),
		delFromCart: builder.mutation({
			query: ({ product_id }) => ({
				url: `cart/${product_id}/delete/`,
				method: 'POST',
				body: { product_id },
			})
		}),
		createOrder: builder.mutation({
			query: ({ user_id, address}) => ({
				url: `orders/`,
				method: 'POST',
				body: { user_id, address},
			})
		}),
	}),
	
});

export const {
	useRetrieveUserQuery,
	useLoginMutation,
	useRegisterMutation,
	useVerifyMutation,
	useLogoutMutation,
	useActivationMutation,
	useResetPasswordMutation,
	useResetPasswordConfirmMutation,
	useGetProductsQuery,
	useGetAccessTokenQuery,
	useDeleteProductMutation,
	useGetProductQuery,
	useGetTypesQuery,
	useGetBrandQuery,
	useAddToCartMutation,
	useGetCartQuery,
	useDelFromCartMutation,
} = authApiSlice;
