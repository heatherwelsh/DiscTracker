
Disc.create([
  { :disc_id => nil, :playerid => nil, :name => nil, :disc_style => nil, :brand => nil, :plastic => nil, :color => nil, :stability => nil, :weight => nil, :level => nil, :created_at => nil, :updated_at => nil }
], :without_protection => true )



DiscBrand.create([
  { :brand => "Aerobie", :created_at => "2012-08-08 05:03:59", :updated_at => "2012-08-08 05:03:59" },
  { :brand => "Ching", :created_at => "2012-08-08 05:04:10", :updated_at => "2012-08-08 05:04:10" },
  { :brand => "DGA", :created_at => "2012-08-08 05:04:16", :updated_at => "2012-08-08 05:04:16" },
  { :brand => "Disc Mania", :created_at => "2012-08-08 05:04:26", :updated_at => "2012-08-08 05:04:26" },
  { :brand => "Discraft", :created_at => "2012-08-08 05:04:38", :updated_at => "2012-08-08 05:04:38" }
], :without_protection => true )



DiscColor.create([
  { :color => "Clear", :created_at => "2012-08-08 05:07:15", :updated_at => "2012-08-08 05:07:15" },
  { :color => "White", :created_at => "2012-08-08 05:07:31", :updated_at => "2012-08-08 05:07:31" },
  { :color => "Beige", :created_at => "2012-08-08 05:07:40", :updated_at => "2012-08-08 05:07:40" },
  { :color => "Yellow", :created_at => "2012-08-08 05:07:47", :updated_at => "2012-08-08 05:07:47" },
  { :color => "Bright Yellow", :created_at => "2012-08-08 05:07:55", :updated_at => "2012-08-08 05:07:55" }
], :without_protection => true )



DiscLevel.create([
  { :level => "Entry", :created_at => "2012-08-08 05:17:59", :updated_at => "2012-08-08 05:17:59" },
  { :level => "Professional", :created_at => "2012-08-08 05:18:09", :updated_at => "2012-08-08 05:18:09" },
  { :level => "Premium", :created_at => "2012-08-08 05:18:19", :updated_at => "2012-08-08 05:18:19" },
  { :level => "Super-Premium", :created_at => "2012-08-08 05:18:44", :updated_at => "2012-08-08 05:18:44" }
], :without_protection => true )



DiscName.create([
  { :name => "Boss", :created_at => "2012-08-08 05:23:03", :updated_at => "2012-08-08 05:23:03" },
  { :name => "LED Flight", :created_at => "2012-08-08 05:23:12", :updated_at => "2012-08-08 05:23:12" },
  { :name => "Katana", :created_at => "2012-08-08 05:23:21", :updated_at => "2012-08-08 05:23:21" },
  { :name => "Buzz", :created_at => "2012-08-08 05:23:29", :updated_at => "2012-08-08 05:23:29" },
  { :name => "Wraith", :created_at => "2012-08-08 05:23:38", :updated_at => "2012-08-08 05:23:38" }
], :without_protection => true )


DiscPlastic.create([
  { :plastic => "Star Line", :created_at => "2012-08-08 05:27:02", :updated_at => "2012-08-08 05:27:02" },
  { :plastic => "Echo Star Line", :created_at => "2012-08-08 05:27:24", :updated_at => "2012-08-08 05:27:24" },
  { :plastic => "Champion", :created_at => "2012-08-08 05:27:46", :updated_at => "2012-08-08 05:27:46" },
  { :plastic => "Blizzard Champion", :created_at => "2012-08-08 05:28:04", :updated_at => "2012-08-08 05:28:04" },
  { :plastic => "Pro Line", :created_at => "2012-08-08 05:28:23", :updated_at => "2012-08-08 05:28:23" }
], :without_protection => true )



DiscStability.create([
  { :stability => "Overstable", :created_at => "2012-08-08 05:19:43", :updated_at => "2012-08-08 05:19:43" },
  { :stability => "Massively Overstable", :created_at => "2012-08-08 05:20:16", :updated_at => "2012-08-08 05:20:16" },
  { :stability => "Stable", :created_at => "2012-08-08 05:20:25", :updated_at => "2012-08-08 05:20:25" },
  { :stability => "Understable", :created_at => "2012-08-08 05:20:33", :updated_at => "2012-08-08 05:20:33" },
  { :stability => "Veru Understable", :created_at => "2012-08-08 05:20:43", :updated_at => "2012-08-08 05:20:43" }
], :without_protection => true )



DiscStyle.create([
  { :style => "Driver", :created_at => "2012-08-08 04:53:25", :updated_at => "2012-08-08 04:53:25" },
  { :style => "Mid Rang", :created_at => "2012-08-08 04:54:42", :updated_at => "2012-08-08 04:54:42" },
  { :style => "Putter", :created_at => "2012-08-08 04:54:53", :updated_at => "2012-08-08 04:54:53" }
], :without_protection => true )



DiscWeight.create([
  { :weight => 139, :created_at => "2012-08-08 05:14:00", :updated_at => "2012-08-08 05:14:00" },
  { :weight => 140, :created_at => "2012-08-08 05:14:19", :updated_at => "2012-08-08 05:14:19" },
  { :weight => 150, :created_at => "2012-08-08 05:14:29", :updated_at => "2012-08-08 05:14:29" },
  { :weight => 160, :created_at => "2012-08-08 05:14:48", :updated_at => "2012-08-08 05:14:48" },
  { :weight => 165, :created_at => "2012-08-08 05:14:59", :updated_at => "2012-08-08 05:14:59" }
], :without_protection => true )


User.create([
  { :playerid => "tomgirlz", :first_name => "heather", :last_name => "welsh", :email => "dogdaysunrize@gmail.com", :created_at => "2012-08-08 13:44:09", :updated_at => "2012-08-08 14:27:04", :encrypted_password => "$2a$10$9TpHBIYkFqxAC6pvL1s8kuzZdzvYmEpjST/UgXmIHnrRkZKwLCmrG", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 3, :current_sign_in_at => "2012-08-08 14:27:04", :last_sign_in_at => "2012-08-08 14:26:25", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1" }
], :without_protection => true )


