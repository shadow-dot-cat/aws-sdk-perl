
package Paws::Neptune::RemoveRoleFromDBCluster;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveRoleFromDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::RemoveRoleFromDBCluster - Arguments for method RemoveRoleFromDBCluster on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveRoleFromDBCluster on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method RemoveRoleFromDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveRoleFromDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    $rds->RemoveRoleFromDBCluster(
      DBClusterIdentifier => 'MyString',
      RoleArn             => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RemoveRoleFromDBCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the DB cluster to disassociate the IAM role from.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role to disassociate from the
DB cluster, for example
C<arn:aws:iam::123456789012:role/NeptuneAccessRole>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveRoleFromDBCluster in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

