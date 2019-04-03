
package Paws::SSM::DescribeInstancePatchStatesForPatchGroup;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InstancePatchStateFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PatchGroup => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstancePatchStatesForPatchGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribeInstancePatchStatesForPatchGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeInstancePatchStatesForPatchGroup - Arguments for method DescribeInstancePatchStatesForPatchGroup on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstancePatchStatesForPatchGroup on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeInstancePatchStatesForPatchGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstancePatchStatesForPatchGroup.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeInstancePatchStatesForPatchGroupResult =
      $ssm->DescribeInstancePatchStatesForPatchGroup(
      PatchGroup => 'MyPatchGroup',
      Filters    => [
        {
          Key => 'MyInstancePatchStateFilterKey',    # min: 1, max: 200
          Type => 'Equal',    # values: Equal, NotEqual, LessThan, GreaterThan
          Values => [ 'MyInstancePatchStateFilterValue', ... ], # min: 1, max: 1

        },
        ...
      ],                                                        # OPTIONAL
      MaxResults => 1,                                          # OPTIONAL
      NextToken  => 'MyNextToken',                              # OPTIONAL
      );

    # Results:
    my $InstancePatchStates =
      $DescribeInstancePatchStatesForPatchGroupResult->InstancePatchStates;
    my $NextToken = $DescribeInstancePatchStatesForPatchGroupResult->NextToken;

# Returns a L<Paws::SSM::DescribeInstancePatchStatesForPatchGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeInstancePatchStatesForPatchGroup>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SSM::InstancePatchStateFilter>]

Each entry in the array is a structure containing:

Key (string between 1 and 200 characters)

Values (array containing a single string)

Type (string "Equal", "NotEqual", "LessThan", "GreaterThan")



=head2 MaxResults => Int

The maximum number of patches to return (per page).



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 B<REQUIRED> PatchGroup => Str

The name of the patch group for which the patch state information
should be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstancePatchStatesForPatchGroup in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

