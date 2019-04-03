
package Paws::CodeBuild::ListSourceCredentials;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSourceCredentials');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::ListSourceCredentialsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListSourceCredentials - Arguments for method ListSourceCredentials on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSourceCredentials on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method ListSourceCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSourceCredentials.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $ListSourceCredentialsOutput = $codebuild->ListSourceCredentials();

    # Results:
    my $SourceCredentialsInfos =
      $ListSourceCredentialsOutput->SourceCredentialsInfos;

    # Returns a L<Paws::CodeBuild::ListSourceCredentialsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/ListSourceCredentials>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSourceCredentials in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

