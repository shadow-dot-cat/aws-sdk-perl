
package Paws::CloudDirectory::ListOutgoingTypedLinks;
  use Moose;
  has ConsistencyLevel => (is => 'ro', isa => 'Str');
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);
  has FilterAttributeRanges => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::TypedLinkAttributeRange]');
  has FilterTypedLink => (is => 'ro', isa => 'Paws::CloudDirectory::TypedLinkSchemaAndFacetName');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ObjectReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOutgoingTypedLinks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/typedlink/outgoing');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::ListOutgoingTypedLinksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListOutgoingTypedLinks - Arguments for method ListOutgoingTypedLinks on Paws::CloudDirectory

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOutgoingTypedLinks on the 
Amazon CloudDirectory service. Use the attributes of this class
as arguments to method ListOutgoingTypedLinks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOutgoingTypedLinks.

As an example:

  $service_obj->ListOutgoingTypedLinks(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ConsistencyLevel => Str

The consistency level to execute the request at.

Valid values are: C<"SERIALIZABLE">, C<"EVENTUAL">

=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) of the directory where you want to list
the typed links.



=head2 FilterAttributeRanges => ArrayRef[L<Paws::CloudDirectory::TypedLinkAttributeRange>]

Provides range filters for multiple attributes. When providing ranges
to typed link selection, any inexact ranges must be specified at the
end. Any attributes that do not have a range specified are presumed to
match the entire range.



=head2 FilterTypedLink => L<Paws::CloudDirectory::TypedLinkSchemaAndFacetName>

Filters are interpreted in the order of the attributes defined on the
typed link facet, not the order they are supplied to any API calls.



=head2 MaxResults => Int

The maximum number of results to retrieve.



=head2 NextToken => Str

The pagination token.



=head2 B<REQUIRED> ObjectReference => L<Paws::CloudDirectory::ObjectReference>

A reference that identifies the object whose attributes will be listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOutgoingTypedLinks in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

