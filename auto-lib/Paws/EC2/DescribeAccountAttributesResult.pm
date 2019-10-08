
package Paws::EC2::DescribeAccountAttributesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_AccountAttribute/;
  has AccountAttributes => (is => 'ro', isa => ArrayRef[EC2_AccountAttribute]);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AccountAttributes' => {
                                        'class' => 'Paws::EC2::AccountAttribute',
                                        'type' => 'ArrayRef[EC2_AccountAttribute]'
                                      }
             },
  'NameInRequest' => {
                       'AccountAttributes' => 'accountAttributeSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeAccountAttributesResult

=head1 ATTRIBUTES


=head2 AccountAttributes => ArrayRef[EC2_AccountAttribute]

Information about the account attributes.


=head2 _request_id => Str


=cut

