
package Paws::CloudWatch::ListDashboards;
  use Moose;
  has DashboardNamePrefix => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDashboards');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::ListDashboardsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListDashboardsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::ListDashboards - Arguments for method ListDashboards on Paws::CloudWatch

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDashboards on the 
Amazon CloudWatch service. Use the attributes of this class
as arguments to method ListDashboards.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDashboards.

As an example:

  $service_obj->ListDashboards(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DashboardNamePrefix => Str

If you specify this parameter, only the dashboards with names starting
with the specified string are listed. The maximum length is 255, and
valid characters are A-Z, a-z, 0-9, ".", "-", and "_".



=head2 NextToken => Str

The token returned by a previous call to indicate that there is more
data available.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDashboards in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

