require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cult_of_nick = Cult.new("Cult of Nick", "Rachel's House", 2016, "My opponent was bad so I lost")
flygons_cult = Cult.new("Flygon's Freeze_cult", "Minnesota", 2014, "Live by freeze, die by freeze")

gypsy = Follower.new("Gypsy King", 30, "That miss really sucked because I missed out on information on his set")
tez = Follower.new("Tez", 17, "i applied but i don't think i have enough accomplishments to get in just yet")
cynthia = Follower.new("Cynthia", 21, "MoNo TyPe Is ThE bEsT")
paddy = Follower.new("Paddy", 17, "Potato")



bloodoath1 = BloodOath.new(cult_of_nick, tez, "_2020-09-02_")
bloodoath2 = BloodOath.new(flygons_cult, tez, "_2020-09-02_")
bloodoath3 = BloodOath.new(flygons_cult, paddy, "_2020-09-02_")
bloodoath4 = BloodOath.new(flygons_cult, cynthia, "_2020-09-02_")


p Follower.most_active

# binding.pry
