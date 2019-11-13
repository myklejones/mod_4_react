class User < ApplicationRecord


has_many :sent_messages,
foreign_key: :message_sender_id,
class_name: 'Message'

has_many :message_senders, through: :messaged_users

has_many :recieve_messages,
foreign_key: :message_reciever_id,
class_name: 'Message'

has_many :message_recievers, through: :messaging_users

has_secure_password
validates_presence_of :username





end
