namespace(:db) do
  namespace(:populate) do

    desc "Creates an admin user for the site"
    task :admin => :environment do
      Admin.destroy_all
      Admin.create!( :nickname => "superadmin", :email => "admin@karting.com", 
        :password => "65432!", :password_confirmation => "65432!" )

      puts "*** Done!"
    end
  end
end