from rest_framework import serializers
from .models import UserAccount

class UserRegisterSerializer(serializers.ModelSerializer):
	class Meta:
		model = UserAccount
		fields = ('id','login', 'name', 'email', 'password', 'is_active', 'is_staff')
		write_only_fields = ('password',)
		read_only_fields = ('id',)

	def create(self, validated_data):
		user = UserAccount.objects.create_user(
			email=validated_data['email'],
			name=validated_data['name'],
			login=validated_data['login'],
		)

		user.set_password(validated_data['password'])
		user.save()
		return user