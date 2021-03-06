class TransactionsPolicy
  attr_reader :user, :transactions

  def initialize(user, transactions)
    @user = user
    @transactions = transactions
  end

  def update?
    user.admin? or  @transactions.user_id==@user.user_id
  end

  def show?
    user.admin? or  @transactions.user_id==@user.user_id
  end
  def index?
    user.admin? or  @transactions.user_id==@user.user_id
  end

  def destroy?
    user.admin? or  @transactions.user_id==@user.user_id
  end

  def edit?
    update?
  end

  def create?
    user.admin? or  @transactions.user_id==@user.user_id
  end

  def new?
    create?
  end

end