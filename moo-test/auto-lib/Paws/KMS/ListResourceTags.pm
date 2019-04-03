
package Paws::KMS::ListResourceTags;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::ListResourceTagsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ListResourceTags - Arguments for method ListResourceTags on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceTags on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method ListResourceTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceTags.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    my $ListResourceTagsResponse = $kms->ListResourceTags(
      KeyId  => 'MyKeyIdType',
      Limit  => 1,                 # OPTIONAL
      Marker => 'MyMarkerType',    # OPTIONAL
    );

    # Results:
    my $NextMarker = $ListResourceTagsResponse->NextMarker;
    my $Tags       = $ListResourceTagsResponse->Tags;
    my $Truncated  = $ListResourceTagsResponse->Truncated;

    # Returns a L<Paws::KMS::ListResourceTagsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/ListResourceTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyId => Str

A unique identifier for the customer master key (CMK).

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=back

To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.



=head2 Limit => Int

Use this parameter to specify the maximum number of items to return.
When this value is present, AWS KMS does not return more than the
specified number of items, but it might return fewer.

This value is optional. If you include a value, it must be between 1
and 50, inclusive. If you do not include a value, it defaults to 50.



=head2 Marker => Str

Use this parameter in a subsequent request after you receive a response
with truncated results. Set it to the value of C<NextMarker> from the
truncated response you just received.

Do not attempt to construct this value. Use only the value of
C<NextMarker> from the truncated response you just received.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceTags in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

