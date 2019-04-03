
package Paws::StorageGateway::DescribeNFSFileShares;
  use Moose;
  has FileShareARNList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNFSFileShares');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DescribeNFSFileSharesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeNFSFileShares - Arguments for method DescribeNFSFileShares on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNFSFileShares on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DescribeNFSFileShares.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNFSFileShares.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $DescribeNFSFileSharesOutput = $storagegateway->DescribeNFSFileShares(
      FileShareARNList => [
        'MyFileShareARN', ...    # min: 50, max: 500
      ],

    );

    # Results:
    my $NFSFileShareInfoList =
      $DescribeNFSFileSharesOutput->NFSFileShareInfoList;

    # Returns a L<Paws::StorageGateway::DescribeNFSFileSharesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DescribeNFSFileShares>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileShareARNList => ArrayRef[Str|Undef]

An array containing the Amazon Resource Name (ARN) of each file share
to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNFSFileShares in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

