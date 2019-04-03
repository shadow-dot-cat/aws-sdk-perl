
package Paws::S3::GetObjectOutput;
  use Moose;
  has AcceptRanges => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'accept-ranges');
  has Body => (is => 'ro', isa => 'Str', traits => ['ParamInBody']);
  has CacheControl => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Cache-Control');
  has ContentDisposition => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Disposition');
  has ContentEncoding => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Encoding');
  has ContentLanguage => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Language');
  has ContentLength => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'Content-Length');
  has ContentRange => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Range');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has DeleteMarker => (is => 'ro', isa => 'Bool', traits => ['ParamInHeader'], header_name => 'x-amz-delete-marker');
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'ETag');
  has Expiration => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-expiration');
  has Expires => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Expires');
  has LastModified => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Last-Modified');
  has Metadata => (is => 'ro', isa => 'Paws::S3::Metadata', traits => ['ParamInHeaders'], header_prefix => 'x-amz-meta-');
  has MissingMeta => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'x-amz-missing-meta');
  has ObjectLockLegalHoldStatus => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-object-lock-legal-hold');
  has ObjectLockMode => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-object-lock-mode');
  has ObjectLockRetainUntilDate => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-object-lock-retain-until-date');
  has PartsCount => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'x-amz-mp-parts-count');
  has ReplicationStatus => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-replication-status');
  has RequestCharged => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-request-charged');
  has Restore => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-restore');
  has ServerSideEncryption => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption-customer-algorithm');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption-customer-key-MD5');
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption-aws-kms-key-id');
  has StorageClass => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-storage-class');
  has TagCount => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'x-amz-tagging-count');
  has VersionId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-version-id');
  has WebsiteRedirectLocation => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-website-redirect-location');

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectOutput

=head1 ATTRIBUTES


=head2 AcceptRanges => Str





=head2 Body => Str

Object data.



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



=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentRange => Str

The portion of the object returned in the response.



=head2 ContentType => Str

A standard MIME type describing the format of the object data.



=head2 DeleteMarker => Bool

Specifies whether the object retrieved was (true) or was not (false) a
Delete Marker. If false, this response header does not appear in the
response.



=head2 ETag => Str

An ETag is an opaque identifier assigned by a web server to a specific
version of a resource found at a URL



=head2 Expiration => Str

If the object expiration is configured (see PUT Bucket lifecycle), the
response includes this header. It includes the expiry-date and rule-id
key value pairs providing object expiration information. The value of
the rule-id is URL encoded.



=head2 Expires => Str

The date and time at which the object is no longer cacheable.



=head2 LastModified => Str

Last modified date of the object



=head2 Metadata => L<Paws::S3::Metadata>

A map of metadata to store with the object in S3.



=head2 MissingMeta => Int

This is set to the number of metadata entries not returned in
x-amz-meta headers. This can happen if you create metadata using an API
like SOAP that supports more flexible metadata than the REST API. For
example, using SOAP, you can create metadata whose values are not legal
HTTP headers.



=head2 ObjectLockLegalHoldStatus => Str

Indicates whether this object has an active legal hold. This field is
only returned if you have permission to view an object's legal hold
status.

Valid values are: C<"ON">, C<"OFF">

=head2 ObjectLockMode => Str

The Object Lock mode currently in place for this object.

Valid values are: C<"GOVERNANCE">, C<"COMPLIANCE">

=head2 ObjectLockRetainUntilDate => Str

The date and time when this object's Object Lock will expire.



=head2 PartsCount => Int

The count of parts this object has.



=head2 ReplicationStatus => Str



Valid values are: C<"COMPLETE">, C<"PENDING">, C<"FAILED">, C<"REPLICA">

=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 Restore => Str

Provides information about object restoration operation and expiration
time of the restored object copy.



=head2 ServerSideEncryption => Str

The Server-side encryption algorithm used when storing this object in
S3 (e.g., AES256, aws:kms).

Valid values are: C<"AES256">, C<"aws:kms">

=head2 SSECustomerAlgorithm => Str

If server-side encryption with a customer-provided encryption key was
requested, the response will include this header confirming the
encryption algorithm used.



=head2 SSECustomerKeyMD5 => Str

If server-side encryption with a customer-provided encryption key was
requested, the response will include this header to provide round trip
message integrity verification of the customer-provided encryption key.



=head2 SSEKMSKeyId => Str

If present, specifies the ID of the AWS Key Management Service (KMS)
master encryption key that was used for the object.



=head2 StorageClass => Str



Valid values are: C<"STANDARD">, C<"REDUCED_REDUNDANCY">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">

=head2 TagCount => Int

The number of tags, if any, on the object.



=head2 VersionId => Str

Version of the object.



=head2 WebsiteRedirectLocation => Str

If the bucket is configured as a website, redirects requests for this
object to another object in the same bucket or to an external URL.
Amazon S3 stores the value of this header in the object metadata.




=cut

