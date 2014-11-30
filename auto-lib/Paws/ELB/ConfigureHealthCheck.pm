
package Paws::ELB::ConfigureHealthCheck {
  use Moose;
  has HealthCheck => (is => 'ro', isa => 'Paws::ELB::HealthCheck', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfigureHealthCheck');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::ConfigureHealthCheckOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ConfigureHealthCheckResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::ConfigureHealthCheck - Arguments for method ConfigureHealthCheck on Paws::ELB

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfigureHealthCheck on the 
Elastic Load Balancing service. Use the attributes of this class
as arguments to method ConfigureHealthCheck.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to ConfigureHealthCheck.

As an example:

  $service_obj->ConfigureHealthCheck(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> HealthCheck => Paws::ELB::HealthCheck

  

A structure containing the configuration information for the new
healthcheck.










=head2 B<REQUIRED> LoadBalancerName => Str

  

The mnemonic name associated with the load balancer. The name must be
unique within the set of load balancers associated with your AWS
account.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for ConfigureHealthCheck in Paws::ELB

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

