
package Paws::CodeCommit::GetRepository;
  use Moose;
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRepository');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::GetRepositoryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetRepository - Arguments for method GetRepository on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRepository on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method GetRepository.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRepository.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $GetRepositoryOutput = $codecommit->GetRepository(
      RepositoryName => 'MyRepositoryName',

    );

    # Results:
    my $RepositoryMetadata = $GetRepositoryOutput->RepositoryMetadata;

    # Returns a L<Paws::CodeCommit::GetRepositoryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/GetRepository>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RepositoryName => Str

The name of the repository to get information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRepository in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

