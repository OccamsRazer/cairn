class SeedOrganizations < ActiveRecord::Migration
  def change
    Organization.create(:name => 'Cockrell School of Engineering')
    Organization.create(:name => 'College of Education')
    Organization.create(:name => 'College of Fine Arts')
    Organization.create(:name => 'College of Liberal Arts')
    Organization.create(:name => 'College of Natural Sciences')
    Organization.create(:name => 'College of Pharmacy')
    Organization.create(:name => 'Dell Medical School')
    Organization.create(:name => 'Graduate School')
    Organization.create(:name => 'Jackson School of Geosciences')
    Organization.create(:name => 'Lyndon B. Johnson School of Public Affairs')
    Organization.create(:name => 'McCombs School of Business')
    Organization.create(:name => 'Moody College of Communication')
    Organization.create(:name => 'School of Architecture')
    Organization.create(:name => 'School of Information')
    Organization.create(:name => 'School of Law')
    Organization.create(:name => 'School of Nursing')
    Organization.create(:name => 'School of Social Work')
    Organization.create(:name => 'School of Undergraduate Studies')
  end
end
