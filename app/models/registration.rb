class Registration < ApplicationRecord
    before_save { self.email = email.downcase }
    mount_uploader :cv, DocumentUploader
    mount_uploader :resume, DocumentUploader
    validate :cv_size
    validate :resume_size
    validates :first_name, presence: true, length: { maximum: 50 }
    validates :last_name, presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 255 }, uniqueness: { case_sensitive: false }
    validates :organization, presence: true, length: { maximum: 50 }

    def cv_size
        if cv.size > 5.megabytes
            errors.add(:cv, "should be less than 5MB")
        end
    end

    def resume_size
        if resume.size > 5.megabytes
            errors.add(:resume, "should be less than 5MB")
        end
    end

end