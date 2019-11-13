class Message < ApplicationRecord
    belongs_to :message_sender,
    class_name: 'User'
    belongs_to :message_reciever,
    class_name: 'User'


    # after_create :create_inverse, unless: :has_inverse?
    
    # after_destroy :destroy_inverse
    # # , if: :has_inverse?
   

    # def create_inverse
    #     self.class.create(inverse_match_options)
    # end 

    # def destroy_inverse
    #     inverse.destroy_all
    # end


    # def has_inverse?
    #     self.class.exists?(inverse_match_options)
    # end

    # def inverse
    #     self.class.where(inverse_match_options)
    # end 

    # def inverse_match_options
        
    #     {  message: message, read: read, message_reciever: message_reciever, message_sender: message_sender }
    # end
end
