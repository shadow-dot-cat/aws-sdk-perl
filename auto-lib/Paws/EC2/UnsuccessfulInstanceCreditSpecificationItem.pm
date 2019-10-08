package Paws::EC2::UnsuccessfulInstanceCreditSpecificationItem;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_UnsuccessfulInstanceCreditSpecificationItemError/;
  has Error => (is => 'ro', isa => EC2_UnsuccessfulInstanceCreditSpecificationItemError);
  has InstanceId => (is => 'ro', isa => Str);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Error' => {
                            'class' => 'Paws::EC2::UnsuccessfulInstanceCreditSpecificationItemError',
                            'type' => 'EC2_UnsuccessfulInstanceCreditSpecificationItemError'
                          },
               'InstanceId' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'Error' => 'error',
                       'InstanceId' => 'instanceId'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::UnsuccessfulInstanceCreditSpecificationItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::UnsuccessfulInstanceCreditSpecificationItem object:

  $service_obj->Method(Att1 => { Error => $value, ..., InstanceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::UnsuccessfulInstanceCreditSpecificationItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Error

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Error => EC2_UnsuccessfulInstanceCreditSpecificationItemError

  The applicable error for the T2 or T3 instance whose credit option for
CPU usage was not modified.


=head2 InstanceId => Str

  The ID of the instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
