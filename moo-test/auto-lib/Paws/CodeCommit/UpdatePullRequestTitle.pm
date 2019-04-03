
package Paws::CodeCommit::UpdatePullRequestTitle;
  use Moose;
  has PullRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullRequestId' , required => 1);
  has Title => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'title' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePullRequestTitle');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::UpdatePullRequestTitleOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::UpdatePullRequestTitle - Arguments for method UpdatePullRequestTitle on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePullRequestTitle on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method UpdatePullRequestTitle.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePullRequestTitle.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $UpdatePullRequestTitleOutput = $codecommit->UpdatePullRequestTitle(
      PullRequestId => 'MyPullRequestId',
      Title         => 'MyTitle',

    );

    # Results:
    my $PullRequest = $UpdatePullRequestTitleOutput->PullRequest;

    # Returns a L<Paws::CodeCommit::UpdatePullRequestTitleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/UpdatePullRequestTitle>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PullRequestId => Str

The system-generated ID of the pull request. To get this ID, use
ListPullRequests.



=head2 B<REQUIRED> Title => Str

The updated title of the pull request. This will replace the existing
title.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePullRequestTitle in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

