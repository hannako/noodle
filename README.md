# noodle

A rails application to allow users to create small private groups so that they can share address information and important dates. Never forget a birthday or post a christmas card to the wrong flat again!

Uses devise_invitable to send invitation to users, the only way a user can sign up. This will ensure the admin can curate members of their group.

Testing: FactoryGirl Rspec Capybara

MVP 1: Admin can invite users. Users can add address information and birthdays. All users can see all info.

MVP 2: Implement reminders and events board
