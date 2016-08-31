module Nibo
  class Organization
    include Nibo::APIResource
    include Nibo::APIGet
    include Nibo::APIPost
    include Nibo::APIDelete
    include Nibo::APIPut
  end

  class Account
    include Nibo::APIResource
    include Nibo::APIGet
    include Nibo::APIPost
    include Nibo::APIDelete
    include Nibo::APIPut
  end

  class Bank
    include Nibo::APIResource
    include Nibo::APIGet
    include Nibo::APIPost
    include Nibo::APIDelete
    include Nibo::APIPut
  end

  class Category
    include Nibo::APIResource
    include Nibo::APIGet
    include Nibo::APIPost
    include Nibo::APIDelete
    include Nibo::APIPut
  end

  class CostCenter
    include Nibo::APIResource
    include Nibo::APIGet
    include Nibo::APIPost
    include Nibo::APIDelete
    include Nibo::APIPut
  end

  class CreditSchedule
    include Nibo::APIResource
    include Nibo::APIGet
    include Nibo::APIPost
    include Nibo::APIDelete
    include Nibo::APIPut
  end

  class Customer
    include Nibo::APIResource
    include Nibo::APIGet
    include Nibo::APIPost
    include Nibo::APIDelete
    include Nibo::APIPut
  end

  class DebitSchedule
    include Nibo::APIResource
    include Nibo::APIGet
    include Nibo::APIPost
    include Nibo::APIDelete
    include Nibo::APIPut
  end

  class Employee
    include Nibo::APIResource
    include Nibo::APIGet
    include Nibo::APIPost
    include Nibo::APIDelete
    include Nibo::APIPut
  end

  class File
    include Nibo::APIResource
    include Nibo::APIGet
    include Nibo::APIPost
    include Nibo::APIDelete
    include Nibo::APIPut
  end

  class Partner
    include Nibo::APIResource
    include Nibo::APIGet
    include Nibo::APIPost
    include Nibo::APIDelete
    include Nibo::APIPut
  end

  class Schedule
    include Nibo::APIResource
    include Nibo::APIGet
    include Nibo::APIPost
    include Nibo::APIDelete
    include Nibo::APIPut
  end

  class Stakeholders
    include Nibo::APIResource
    include Nibo::APIGet
    include Nibo::APIPost
    include Nibo::APIDelete
    include Nibo::APIPut
  end

  class Supplier
    include Nibo::APIResource
    include Nibo::APIGet
    include Nibo::APIPost
    include Nibo::APIDelete
    include Nibo::APIPut
  end
end
