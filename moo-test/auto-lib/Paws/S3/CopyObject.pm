
package Paws::S3::CopyObject;
  use Moose;
  has ACL => (is => 'ro', isa => 'Str', header_name => 'x-amz-acl', traits => ['ParamInHeader']);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has CacheControl => (is => 'ro', isa => 'Str', header_name => 'Cache-Control', traits => ['ParamInHeader']);
  has ContentDisposition => (is => 'ro', isa => 'Str', header_name => 'Content-Disposition', traits => ['ParamInHeader']);
  has ContentEncoding => (is => 'ro', isa => 'Str', header_name => 'Content-Encoding', traits => ['ParamInHeader']);
  has ContentLanguage => (is => 'ro', isa => 'Str', header_name => 'Content-Language', traits => ['ParamInHeader']);
  has ContentType => (is => 'ro', isa => 'Str', header_name => 'Content-Type', traits => ['ParamInHeader']);
  has CopySource => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source', traits => ['ParamInHeader'], required => 1);
  has CopySourceIfMatch => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-match', traits => ['ParamInHeader']);
  has CopySourceIfModifiedSince => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-modified-since', traits => ['ParamInHeader']);
  has CopySourceIfNoneMatch => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-none-match', traits => ['ParamInHeader']);
  has CopySourceIfUnmodifiedSince => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-unmodified-since', traits => ['ParamInHeader']);
  has CopySourceSSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has CopySourceSSECustomerKey => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-server-side-encryption-customer-key', traits => ['ParamInHeader']);
  has CopySourceSSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has Expires => (is => 'ro', isa => 'Str', header_name => 'Expires', traits => ['ParamInHeader']);
  has GrantFullControl => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-full-control', traits => ['ParamInHeader']);
  has GrantRead => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read', traits => ['ParamInHeader']);
  has GrantReadACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read-acp', traits => ['ParamInHeader']);
  has GrantWriteACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-write-acp', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::S3::Metadata', header_prefix => 'x-amz-meta-', traits => ['ParamInHeaders']);
  has MetadataDirective => (is => 'ro', isa => 'Str', header_name => 'x-amz-metadata-directive', traits => ['ParamInHeader']);
  has ObjectLockLegalHoldStatus => (is => 'ro', isa => 'Str', header_name => 'x-amz-object-lock-legal-hold', traits => ['ParamInHeader']);
  has ObjectLockMode => (is => 'ro', isa => 'Str', header_name => 'x-amz-object-lock-mode', traits => ['ParamInHeader']);
  has ObjectLockRetainUntilDate => (is => 'ro', isa => 'Str', header_name => 'x-amz-object-lock-retain-until-date', traits => ['ParamInHeader']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has ServerSideEncryption => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKey => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-aws-kms-key-id', traits => ['ParamInHeader']);
  has StorageClass => (is => 'ro', isa => 'Str', header_name => 'x-amz-storage-class', traits => ['ParamInHeader']);
  has Tagging => (is => 'ro', isa => 'Str', header_name => 'x-amz-tagging', traits => ['ParamInHeader']);
  has TaggingDirective => (is => 'ro', isa => 'Str', header_name => 'x-amz-tagging-directive', traits => ['ParamInHeader']);
  has WebsiteRedirectLocation => (is => 'ro', isa => 'Str', header_name => 'x-amz-website-redirect-location', traits => ['ParamInHeader']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::CopyObjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CopyObject - Arguments for method CopyObject on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyObject on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method CopyObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyObject.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $CopyObjectOutput = $s3->CopyObject(
      Bucket                      => 'MyBucketName',
      CopySource                  => 'MyCopySource',
      Key                         => 'MyObjectKey',
      ACL                         => 'private',                    # OPTIONAL
      CacheControl                => 'MyCacheControl',             # OPTIONAL
      ContentDisposition          => 'MyContentDisposition',       # OPTIONAL
      ContentEncoding             => 'MyContentEncoding',          # OPTIONAL
      ContentLanguage             => 'MyContentLanguage',          # OPTIONAL
      ContentType                 => 'MyContentType',              # OPTIONAL
      CopySourceIfMatch           => 'MyCopySourceIfMatch',        # OPTIONAL
      CopySourceIfModifiedSince   => '1970-01-01T01:00:00',        # OPTIONAL
      CopySourceIfNoneMatch       => 'MyCopySourceIfNoneMatch',    # OPTIONAL
      CopySourceIfUnmodifiedSince => '1970-01-01T01:00:00',        # OPTIONAL
      CopySourceSSECustomerAlgorithm =>
        'MyCopySourceSSECustomerAlgorithm',                        # OPTIONAL
      CopySourceSSECustomerKey    => 'MyCopySourceSSECustomerKey',    # OPTIONAL
      CopySourceSSECustomerKeyMD5 => 'MyCopySourceSSECustomerKeyMD5', # OPTIONAL
      Expires                     => '1970-01-01T01:00:00',           # OPTIONAL
      GrantFullControl            => 'MyGrantFullControl',            # OPTIONAL
      GrantRead                   => 'MyGrantRead',                   # OPTIONAL
      GrantReadACP                => 'MyGrantReadACP',                # OPTIONAL
      GrantWriteACP               => 'MyGrantWriteACP',               # OPTIONAL
      Metadata          => { 'MyMetadataKey' => 'MyMetadataValue', }, # OPTIONAL
      MetadataDirective => 'COPY',                                    # OPTIONAL
      ObjectLockLegalHoldStatus => 'ON',                              # OPTIONAL
      ObjectLockMode            => 'GOVERNANCE',                      # OPTIONAL
      ObjectLockRetainUntilDate => '1970-01-01T01:00:00',             # OPTIONAL
      RequestPayer              => 'requester',                       # OPTIONAL
      SSECustomerAlgorithm      => 'MySSECustomerAlgorithm',          # OPTIONAL
      SSECustomerKey            => 'MySSECustomerKey',                # OPTIONAL
      SSECustomerKeyMD5         => 'MySSECustomerKeyMD5',             # OPTIONAL
      SSEKMSKeyId               => 'MySSEKMSKeyId',                   # OPTIONAL
      ServerSideEncryption      => 'AES256',                          # OPTIONAL
      StorageClass              => 'STANDARD',                        # OPTIONAL
      Tagging                   => 'MyTaggingHeader',                 # OPTIONAL
      TaggingDirective          => 'COPY',                            # OPTIONAL
      WebsiteRedirectLocation   => 'MyWebsiteRedirectLocation',       # OPTIONAL
    );

    # Results:
    my $CopyObjectResult     = $CopyObjectOutput->CopyObjectResult;
    my $CopySourceVersionId  = $CopyObjectOutput->CopySourceVersionId;
    my $Expiration           = $CopyObjectOutput->Expiration;
    my $RequestCharged       = $CopyObjectOutput->RequestCharged;
    my $SSECustomerAlgorithm = $CopyObjectOutput->SSECustomerAlgorithm;
    my $SSECustomerKeyMD5    = $CopyObjectOutput->SSECustomerKeyMD5;
    my $SSEKMSKeyId          = $CopyObjectOutput->SSEKMSKeyId;
    my $ServerSideEncryption = $CopyObjectOutput->ServerSideEncryption;
    my $VersionId            = $CopyObjectOutput->VersionId;

    # Returns a L<Paws::S3::CopyObjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/CopyObject>

=head1 ATTRIBUTES


=head2 ACL => Str

The canned ACL to apply to the object.

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">, C<"aws-exec-read">, C<"bucket-owner-read">, C<"bucket-owner-full-control">

=head2 B<REQUIRED> Bucket => Str





=head2 CacheControl => Str

Specifies caching behavior along the request/reply chain.



=head2 ContentDisposition => Str

Specifies presentational information for the object.



=head2 ContentEncoding => Str

Specifies what content encodings have been applied to the object and
thus what decoding mechanisms must be applied to obtain the media-type
referenced by the Content-Type header field.



=head2 ContentLanguage => Str

The language the content is in.



=head2 ContentType => Str

A standard MIME type describing the format of the object data.



=head2 B<REQUIRED> CopySource => Str

The name of the source bucket and key name of the source object,
separated by a slash (/). Must be URL-encoded.



=head2 CopySourceIfMatch => Str

Copies the object if its entity tag (ETag) matches the specified tag.



=head2 CopySourceIfModifiedSince => Str

Copies the object if it has been modified since the specified time.



=head2 CopySourceIfNoneMatch => Str

Copies the object if its entity tag (ETag) is different than the
specified ETag.



=head2 CopySourceIfUnmodifiedSince => Str

Copies the object if it hasn't been modified since the specified time.



=head2 CopySourceSSECustomerAlgorithm => Str

Specifies the algorithm to use when decrypting the source object (e.g.,
AES256).



=head2 CopySourceSSECustomerKey => Str

Specifies the customer-provided encryption key for Amazon S3 to use to
decrypt the source object. The encryption key provided in this header
must be one that was used when the source object was created.



=head2 CopySourceSSECustomerKeyMD5 => Str

Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to
ensure the encryption key was transmitted without error.



=head2 Expires => Str

The date and time at which the object is no longer cacheable.



=head2 GrantFullControl => Str

Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the
object.



=head2 GrantRead => Str

Allows grantee to read the object data and its metadata.



=head2 GrantReadACP => Str

Allows grantee to read the object ACL.



=head2 GrantWriteACP => Str

Allows grantee to write the ACL for the applicable object.



=head2 B<REQUIRED> Key => Str





=head2 Metadata => L<Paws::S3::Metadata>

A map of metadata to store with the object in S3.



=head2 MetadataDirective => Str

Specifies whether the metadata is copied from the source object or
replaced with metadata provided in the request.

Valid values are: C<"COPY">, C<"REPLACE">

=head2 ObjectLockLegalHoldStatus => Str

Specifies whether you want to apply a Legal Hold to the copied object.

Valid values are: C<"ON">, C<"OFF">

=head2 ObjectLockMode => Str

The Object Lock mode that you want to apply to the copied object.

Valid values are: C<"GOVERNANCE">, C<"COMPLIANCE">

=head2 ObjectLockRetainUntilDate => Str

The date and time when you want the copied object's Object Lock to
expire.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 ServerSideEncryption => Str

The Server-side encryption algorithm used when storing this object in
S3 (e.g., AES256, aws:kms).

Valid values are: C<"AES256">, C<"aws:kms">

=head2 SSECustomerAlgorithm => Str

Specifies the algorithm to use to when encrypting the object (e.g.,
AES256).



=head2 SSECustomerKey => Str

Specifies the customer-provided encryption key for Amazon S3 to use in
encrypting data. This value is used to store the object and then it is
discarded; Amazon does not store the encryption key. The key must be
appropriate for use with the algorithm specified in the
x-amz-server-side-encryption-customer-algorithm header.



=head2 SSECustomerKeyMD5 => Str

Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to
ensure the encryption key was transmitted without error.



=head2 SSEKMSKeyId => Str

Specifies the AWS KMS key ID to use for object encryption. All GET and
PUT requests for an object protected by AWS KMS will fail if not made
via SSL or using SigV4. Documentation on configuring any of the
officially supported AWS SDKs and CLI can be found at
http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version



=head2 StorageClass => Str

The type of storage to use for the object. Defaults to 'STANDARD'.

Valid values are: C<"STANDARD">, C<"REDUCED_REDUNDANCY">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">

=head2 Tagging => Str

The tag-set for the object destination object this value must be used
in conjunction with the TaggingDirective. The tag-set must be encoded
as URL Query parameters



=head2 TaggingDirective => Str

Specifies whether the object tag-set are copied from the source object
or replaced with tag-set provided in the request.

Valid values are: C<"COPY">, C<"REPLACE">

=head2 WebsiteRedirectLocation => Str

If the bucket is configured as a website, redirects requests for this
object to another object in the same bucket or to an external URL.
Amazon S3 stores the value of this header in the object metadata.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyObject in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

