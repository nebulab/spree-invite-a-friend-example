Spree Invite a Friend Example
=============================

Spree Invite a Friend Example is an example on how to install [DeviseInvitable](https://github.com/scambra/devise_invitable) on [Spree](http://spreecommerce.com).
It's a demo application made for the [Installing Devise Invitable on Spree](http://nebulab.it/blog/installing-devise-invitable-on-spree/) blogpost.

Setup
-----

1. Clone the repo:

        $ cd ~/Code
        $ git clone git@github.com:nebulab/spree-invite-a-friend-example.git
        $ cd spree-invite-a-friend-example

2. Installed the required gems:

        $ bundle install

3. Create the development database (with example data):

        $ rake db:setup && rake spree_sample:load

3. You're up and running. Just start the server:

        $ rails server

4. Play around with Spree and DeviseInvitable. Login with your generated
user and visit `http://localhost:3000/`.
