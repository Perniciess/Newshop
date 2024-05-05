export interface Product {
	id: number;
	name: string;
	price: number;
	brand: string;
	type: string;
	type_id: number;
	brand_id: number;
	img: string; 
  }
  
  export interface AddProductFormValues {
	name: string;
	price: number;
  }

  export interface Token {
	access: string,
  }


  export interface User {
	login: string;
	name: string;
	email: string;
	is_staff: boolean;
}

export interface Products {
	id: number;
	price: number;
	name: string;
	img: string;
	type_name: string;
	brand_name: string;
	brand_id: number;
	type_id: number;
  }

  export interface Type {
	id: number;
	price: number;
	name: string;
	img: string;
	type_name: string;
	brand_name: string;
	type: number;
  }

  export interface Brand {
	id: number;
	price: number;
	name: string;
	img: string;
	type_name: string;
	brand_name: string;
	type: number;
  }


  export interface CreateUserResponse {
	success: boolean;
	user: User;
}