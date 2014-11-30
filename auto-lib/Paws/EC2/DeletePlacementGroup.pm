
package Paws::EC2::DeletePlacementGroup {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has GroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'groupName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePlacementGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeletePlacementGroup - Arguments for method DeletePlacementGroup on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePlacementGroup on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DeletePlacementGroup.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to DeletePlacementGroup.

As an example:

  $service_obj->DeletePlacementGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 DryRun => Bool

  

=head2 B<REQUIRED> GroupName => Str

  

The name of the placement group.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for DeletePlacementGroup in Paws::EC2

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

