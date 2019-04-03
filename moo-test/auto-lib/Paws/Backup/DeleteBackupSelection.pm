
package Paws::Backup::DeleteBackupSelection;
  use Moose;
  has BackupPlanId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupPlanId', required => 1);
  has SelectionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'selectionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBackupSelection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup/plans/{backupPlanId}/selections/{selectionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DeleteBackupSelection - Arguments for method DeleteBackupSelection on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBackupSelection on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method DeleteBackupSelection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBackupSelection.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    $backup->DeleteBackupSelection(
      BackupPlanId => 'Mystring',
      SelectionId  => 'Mystring',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/DeleteBackupSelection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupPlanId => Str

Uniquely identifies a backup plan.



=head2 B<REQUIRED> SelectionId => Str

Uniquely identifies the body of a request to assign a set of resources
to a backup plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBackupSelection in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

