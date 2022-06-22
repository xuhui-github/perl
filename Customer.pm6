use DB::Xoos::Model;
unit class Model::Customer does DB::Xoos::Model['customer'];

has @.columns = [
  id => {
    type           => 'integer',
    nullable       => False,
    is-primary-key => True,
    auto-increment => 1,
  },
  name => {
    type           => 'text',
  },
  rate => {
    type => 'integer',
  },
];

has @.relations = [
  orders => { :has-many, :model<Order>, :relate(id => 'customer_id') },
];
