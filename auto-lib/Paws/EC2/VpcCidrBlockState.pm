package Paws::EC2::VpcCidrBlockState;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has State => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'StatusMessage' => {
                                    'type' => 'Str'
                                  },
               'State' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'StatusMessage' => 'statusMessage',
                       'State' => 'state'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpcCidrBlockState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpcCidrBlockState object:

  $service_obj->Method(Att1 => { State => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpcCidrBlockState object:

  $result = $service_obj->Method(...);
  $result->Att1->State

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 State => Str

  The state of the CIDR block.


=head2 StatusMessage => Str

  A message about the status of the CIDR block, if applicable.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
