
package Paws::CodeCommit::ListAssociatedApprovalRuleTemplatesForRepository;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssociatedApprovalRuleTemplatesForRepository');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::ListAssociatedApprovalRuleTemplatesForRepositoryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ListAssociatedApprovalRuleTemplatesForRepository - Arguments for method ListAssociatedApprovalRuleTemplatesForRepository on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssociatedApprovalRuleTemplatesForRepository on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method ListAssociatedApprovalRuleTemplatesForRepository.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssociatedApprovalRuleTemplatesForRepository.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $ListAssociatedApprovalRuleTemplatesForRepositoryOutput =
      $codecommit->ListAssociatedApprovalRuleTemplatesForRepository(
      RepositoryName => 'MyRepositoryName',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyNextToken',        # OPTIONAL
      );

    # Results:
    my $ApprovalRuleTemplateNames =
      $ListAssociatedApprovalRuleTemplatesForRepositoryOutput
      ->ApprovalRuleTemplateNames;
    my $NextToken =
      $ListAssociatedApprovalRuleTemplatesForRepositoryOutput->NextToken;

# Returns a L<Paws::CodeCommit::ListAssociatedApprovalRuleTemplatesForRepositoryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/ListAssociatedApprovalRuleTemplatesForRepository>

=head1 ATTRIBUTES


=head2 MaxResults => Int

A non-zero, non-negative integer used to limit the number of returned
results.



=head2 NextToken => Str

An enumeration token that, when provided in a request, returns the next
batch of the results.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository for which you want to list all associated
approval rule templates.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssociatedApprovalRuleTemplatesForRepository in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

