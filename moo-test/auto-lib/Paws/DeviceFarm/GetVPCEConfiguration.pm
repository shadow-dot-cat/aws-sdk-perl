
package Paws::DeviceFarm::GetVPCEConfiguration;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetVPCEConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::GetVPCEConfigurationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetVPCEConfiguration - Arguments for method GetVPCEConfiguration on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetVPCEConfiguration on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method GetVPCEConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetVPCEConfiguration.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $GetVPCEConfigurationResult = $devicefarm->GetVPCEConfiguration(
      Arn => 'MyAmazonResourceName',

    );

    # Results:
    my $VpceConfiguration = $GetVPCEConfigurationResult->VpceConfiguration;

    # Returns a L<Paws::DeviceFarm::GetVPCEConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/GetVPCEConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the VPC endpoint configuration you
want to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetVPCEConfiguration in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

