
package Paws::EC2::AssociateRouteTableResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has AssociationId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'AssociationId' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'AssociationId' => 'associationId'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateRouteTableResult

=head1 ATTRIBUTES


=head2 AssociationId => Str

The route table association ID. This ID is required for disassociating
the route table.


=head2 _request_id => Str


=cut

