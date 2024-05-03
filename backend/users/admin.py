from django.contrib import admin
from users.models import UserAccount

class UserAccountAdmin(admin.ModelAdmin):
	list_display = ('login', 'email', 'is_staff', 'is_superuser')

admin.site.register(UserAccount, UserAccountAdmin)