
package Paws::EC2::RunScheduledInstancesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::EC2::Types qw//;
  has InstanceIdSet => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InstanceIdSet' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  }
             },
  'NameInRequest' => {
                       'InstanceIdSet' => 'instanceIdSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RunScheduledInstancesResult

=head1 ATTRIBUTES


=head2 InstanceIdSet => ArrayRef[Str|Undef]

The IDs of the newly launched instances.


=head2 _request_id => Str


=cut

