
package Paws::IAM::PutUserPolicy {
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutUserPolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::PutUserPolicy - Arguments for method PutUserPolicy on Paws::IAM

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutUserPolicy on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method PutUserPolicy.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to PutUserPolicy.

As an example:

  $service_obj->PutUserPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> PolicyDocument => Str

  

The policy document.










=head2 B<REQUIRED> PolicyName => Str

  

The name of the policy document.










=head2 B<REQUIRED> UserName => Str

  

The name of the user to associate the policy with.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for PutUserPolicy in Paws::IAM

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

