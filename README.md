# Noodle

Noodle is a group address book, users create a profile containing their address and birthday and this information is visible to all the members of their group. The site is invitation only, users are sent an email sign up link by the group admin.

### Instructions
* `git clone https://github.com/hannako/noodle.git`
* `cd` into project
* If Postgres is installed run `rake db:setup`. If not, here's a [guide](https://launchschool.com/blog/how-to-install-postgresql-on-a-mac)
* `bin/rails s`
* visit the application at localhost:3000

### Technology
* Rails
* devise_invitable to send invitation to users
* Testing: FactoryGirl Rspec Capybara

### Status
:white_check_mark: Users are invited to use the site by email.

:white_check_mark: User has a profile page, and a 'My Group' page where they can see everyone's info.

:construction: Groups: I have created the group table with a HABTM relationship to user and admin. But I haven't yet implemented the controller. See below in blockers.

:construction: Styling: Combination of boostrap and vanilla CSS. Needs a lot of work.

:bulb: To do: text reminders of upcoming birthdays, implement with Twilio.

:bulb: To do: news feed?

### Blockers
* I would like the admin to invite users to join a specific group, not just to sign up to the site. This is possible with the devise invitable gem [if the group already exists](https://github.com/scambra/devise_invitable/issues/686), but I am struggling to hack the mailer view.
