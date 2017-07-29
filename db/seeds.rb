# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed roles
Role.create(title: 'admin', description: 'Admin Role')
Role.create(title: 'investor', description: 'Investor Role')
Role.create(title: 'owner', description: 'Project Owners/Creators')

# Seed Funding Rounds
FundingRound.create(title: 'Seed', description: 'Seed Investment Round')
FundingRound.create(title: 'Angel', description: 'Angel Investment Round')
FundingRound.create(title: 'A', description: 'A Investment Round')
FundingRound.create(title: 'B', description: 'B Investment Round')
FundingRound.create(title: 'C', description: 'C Investment Round')
FundingRound.create(title: 'Public', description: 'Publicly Traded')

# Seed Statuses
Status.create(title: 'open', description: 'Ready for funding')
Status.create(title: 'closed', description: 'Closed to funding')

# Create 1 admin, 5 investors, and 5 owners
User.create(email: Faker::Internet.email, role_id: 1)
5.times { User.create(email: Faker::Internet.email, role_id: 2) }
5.times { User.create(email: Faker::Internet.email, role_id: 3) }

# Create 10 projects with various users, rounds, ans statuses
10.times { Project.create(title: Faker::Commerce.product_name,
                          description: Faker::Company.catch_phrase,
                          user_id: User.all.sample.id,
                          funding_round_id: FundingRound.all.sample.id,
                          status_id: Status.all.sample.id,
                          uuid: SecureRandom.uuid)
         }