# NotiBoard

NotiBoard is a web application that helps users to create boards(bulletin board or notice board) for an event, community etc.

Admins of boards can invite people to their boards to subscribe. A board can be public or private(invite only)

Subscribers gets notified on every new post by email, SMS, browser notifications.(planning to add more integrations)


# Running on development

```
git clone git@gitlab.com:AB2017-Rails/notiboard.git
cd notiboard
bundle install
rake db:create && rake db:migrate
rails server
```



