package Paws::CodeCommit::BatchAssociateApprovalRuleTemplateWithRepositoriesError;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str', request_name => 'errorCode', traits => ['NameInRequest']);
  has ErrorMessage => (is => 'ro', isa => 'Str', request_name => 'errorMessage', traits => ['NameInRequest']);
  has RepositoryName => (is => 'ro', isa => 'Str', request_name => 'repositoryName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::BatchAssociateApprovalRuleTemplateWithRepositoriesError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::BatchAssociateApprovalRuleTemplateWithRepositoriesError object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., RepositoryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::BatchAssociateApprovalRuleTemplateWithRepositoriesError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Returns information about errors in a
BatchAssociateApprovalRuleTemplateWithRepositories operation.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  An error code that specifies whether the repository name was not valid
or not found.


=head2 ErrorMessage => Str

  An error message that provides details about why the repository name
was not found or not valid.


=head2 RepositoryName => Str

  The name of the repository where the association was not made.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

