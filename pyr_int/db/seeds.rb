# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


	SshConnection.create([
  { name: 'Head' , ip: '172.16.36.128', login: 'user'},
  { name: 'Node01', ip: '172.16.36.129', login: 'user'},
  { name: 'Node02', ip: '172.16.36.130', login: 'user'}
	])