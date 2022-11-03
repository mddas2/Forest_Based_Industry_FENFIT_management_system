from django.urls import path
from . import application_form, views,user_authentication_authorization,global_views,blogs,teams,home,chatapp,mailapp

urlpatterns = [
    #**********User Authentication******************************************
    path('', views.index, name='index'),
    path('login',user_authentication_authorization.Login,name='Login'),
    path('signup',user_authentication_authorization.SignUp,name='SignUp'),
    path('logout',user_authentication_authorization.Logout,name='Logout'),
    #****************Users************************************
    path('users-list', user_authentication_authorization.UserList, name='UserList'),
    path('user-type/<int:role_id>', user_authentication_authorization.AdvanceUserList, name='AdvanceUserList'),
    path('user-create',user_authentication_authorization.UserCreate,name="UserCreate"),
    path('user-create/<int:id>',user_authentication_authorization.UserCreate,name="UserCreate"),
    path('user-store',user_authentication_authorization.UserStore,name='UserStore'),
    path('user-store/<int:id>',user_authentication_authorization.UserStore,name='UserStore'),
    path('user-delete/<int:id>', user_authentication_authorization.UserDelete, name='UserDelete'),

    path('role-list', user_authentication_authorization.RoleList, name='RoleList'),
    path('role-create', user_authentication_authorization.RoleCreate, name='RoleCreate'),
    path('role-edit/<int:id>', user_authentication_authorization.RoleCreate, name='RoleCreate'),
    path('role-delete/<int:id>', user_authentication_authorization.RoleDelete, name='RoleDelete'),
    path('role-store', user_authentication_authorization.RoleStore, name='RoleStore'),
    path('role-store/<int:id>', user_authentication_authorization.RoleStore, name='RoleStore'),

    path('group-list', user_authentication_authorization.GroupList, name='GroupList'),
    path('group-create/', user_authentication_authorization.GroupCreate, name='GroupCreate'),
    path('group-edit/<int:id>', user_authentication_authorization.GroupCreate, name='GroupCreate'),
    path('group-delete/<int:id>', user_authentication_authorization.GroupDelete, name='GroupDelete'),
    path('group-store', user_authentication_authorization.GroupStore, name='GroupStore'),
    path('group-store/<int:id>', user_authentication_authorization.GroupStore, name='GroupStore'),

    path('permission-list', user_authentication_authorization.PermissionList, name='PermissionList'),
    path('permission-edit/<int:id>', user_authentication_authorization.PermissionEdit, name='PermissionEdit'),
    path('permission-delete/<int:id>', user_authentication_authorization.PermissionDelete, name='PermissionDelete'),
    path('permission-store', user_authentication_authorization.PermissionStore, name='PermissionStore'),

    path('user-logs', user_authentication_authorization.UserLogs, name='UserLogs'),

    #****************CHATAPP************************************
    path('chatapp', chatapp.ChatApp, name='ChatApp'),

    #****************MailBox************************************
    path('mail-app', mailapp.MailApp, name='MailApp'),
    path('mail-detail', mailapp.MailDetail, name='MailDetail'),
    path('mail-compose', mailapp.MailCompose, name='MailCompose'),

    #****************category************************************
    path('navigation-list', views.NavigationList, name='NavigationList'),
    path('navigation-list/<int:id>/list', views.NavigationList, name='NavigationList'),
    path('category-create',views.NavigationCreate,name="NavigationCreate"),
    path('category-create/<int:parent_id>', views.NavigationCreate, name='SubNavigationCreate'),#sub page
    path('category-edit/<int:edit_id>/', views.NavigationCreate, name='NavigationCreate'),
    path('category-store',views.NavigationStore,name="NavigationStore"),
    path('category-update/<int:edit_id>', views.NavigationStore, name='NavigationStore'),
    path('category-delete/<int:id>',views.NavigationDelete,name="NavigationDelete"),

    #****************Home Navigation************************************
    path('home-navigation-list', home.HomeNavigationList, name='HomeNavigationList'),
    path('home-navigation-list/<int:id>/list', home.HomeNavigationList, name='HomeNavigationList'),
    path('home-category-create',home.HomeNavigationCreate,name="HomeNavigationCreate"),
    path('home-category-create/<int:parent_id>', home.HomeNavigationCreate, name='HomeSubNavigationCreate'),#sub page
    path('home-category-edit/<int:edit_id>', home.HomeNavigationCreate, name='HomeNavigationCreate'),
    path('home-category-store',home.HomeNavigationStore,name="HomeNavigationStore"),
    path('home-category-update/<int:edit_id>', home.HomeNavigationStore, name='HomeNavigationStore'),
    path('home-category-delete/<int:id>',home.HomeNavigationDelete,name="HomeNavigationDelete"),

    

   #****************global-setting**************************************
    path('global-create/<int:pk>', global_views.GlobalCreate, name="GlobalCreate"),
    path('global-create', global_views.GlobalCreate, name='GlobalCreate'),
    path('global-store', global_views.GlobalStore, name='GlobalStore'),
    path('global-store/<int:pk>', global_views.GlobalStore, name='GlobalStore'),
    # path('/global-delete/<int:pk>', global_views.GlobalDelete, name='GlobalDelete'),

   #****************blogs**************************************
    path('blogs', blogs.Blogs, name='Blogs'),
    path('blogs-create/<int:pk>', blogs.BlogsCreate, name="BlogsCreate"),
    path('blogs-create', blogs.BlogsCreate, name='BlogsCreate'),
    path('blogs-store', blogs.BlogsStore, name='BlogsStore'),
    path('blogs-store/<int:pk>', blogs.BlogsStore, name='BlogsStore'),
    path('blogs-delete/<int:pk>', blogs.BlogsDelete, name='BlogsDelete'),

    #****************Teams**************************************
    path('teams', teams.Teams, name='Teams'),
    path('teams/<int:pk>', teams.Teams, name='Teams'),
    # path('/teams-create/<int:pk>/', teams.TeamsCreate, name="TeamsCreate"),
    # path('/teams-create/', teams.TeamsCreate, name='TeamsCreate'),
    path('teams-store', teams.TeamsStore, name='TeamsStore'),
    path('teams-store/<int:pk>', teams.TeamsStore, name='TeamsStore'),
    path('teams-delete/<int:pk>', teams.TeamsDelete, name='TeamsDelete'),

    #****************Orders**************************************
    path('customer-order', application_form.CustomerOrder, name='CustomerOrder'),
    #****************Orders**************************************
    path('all-application', application_form.Orders, name='Order'),
    path('all-application/<int:pk>/<str:approved_pending_cancelled>', application_form.Orders, name='Order'),

    #**** Client messages*****#
    path('client-messages/<int:id>', views.ClientMessage, name='ClientMessage'),

    #****************Pending**************************************
    path('pending', application_form.Pending, name='Pending'),
    path('pending/<int:pk>/<str:approved_pending_cancelled>', application_form.Pending, name='Pending'),

    #****************Delivered**************************************
    path('approved', application_form.Delivered, name='Delivered'),
    path('approved/<int:pk>/<str:approved_pending_cancelled>', application_form.Delivered, name='Delivered'),

     #****************Delivered**************************************
    path('referred', application_form.Delivered, name='Delivered'),
    path('referred/<int:pk>/<str:approved_pending_cancelled>', application_form.Delivered, name='Delivered'),
    
    #****************CanclelledOrders**************************************
    path('rejected-application', application_form.CanclelledOrders, name='CanclelledOrders'),
    path('rejected-application/<int:pk>/<str:approved_pending_cancelled>', application_form.CanclelledOrders, name='CanclelledOrders'),
        

    #****************Personal user information i.e clients**************************************
    path('personal-information', application_form.UserPersonalInformationCreate, name='UserPersonalInformationCreate'),
    path('personal-information-store',application_form.UserPersonalInformationStore,name='UserPersonalInformationStore'),

     #****************Application user application i.e clients send application to upper level**************************************
    path('application-form', application_form.UserApplicationFormCreate, name='UserApplicationFormCreate'),
    path('application-form-store',application_form.UserApplicationFormStore,name='UserApplicationFormStore'),

   #****************Application reviewed application i.e clients check application status**************************************
    path('application-reviewed', application_form.UserApplicationReview, name='UserApplicationReview'),

   #****************Application reviewed application i.e clients check application status**************************************
   path('application-result', application_form.UserApplicationResult, name='UserApplicationResult'),
]   