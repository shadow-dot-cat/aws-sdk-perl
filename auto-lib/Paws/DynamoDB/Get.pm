package Paws::DynamoDB::Get;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_ExpressionAttributeNameMap DynamoDB_Key/;
  has ExpressionAttributeNames => (is => 'ro', isa => DynamoDB_ExpressionAttributeNameMap);
  has Key => (is => 'ro', isa => DynamoDB_Key, required => 1);
  has ProjectionExpression => (is => 'ro', isa => Str);
  has TableName => (is => 'ro', isa => Str, required => 1);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'TableName' => {
                                'type' => 'Str'
                              },
               'ExpressionAttributeNames' => {
                                               'class' => 'Paws::DynamoDB::ExpressionAttributeNameMap',
                                               'type' => 'DynamoDB_ExpressionAttributeNameMap'
                                             },
               'ProjectionExpression' => {
                                           'type' => 'Str'
                                         },
               'Key' => {
                          'class' => 'Paws::DynamoDB::Key',
                          'type' => 'DynamoDB_Key'
                        }
             }
}
;
      return $Params_map;
    }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::Get

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::Get object:

  $service_obj->Method(Att1 => { ExpressionAttributeNames => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::Get object:

  $result = $service_obj->Method(...);
  $result->Att1->ExpressionAttributeNames

=head1 DESCRIPTION

Specifies an item and related attribute values to retrieve in a
C<TransactGetItem> object.

=head1 ATTRIBUTES


=head2 ExpressionAttributeNames => DynamoDB_ExpressionAttributeNameMap

  One or more substitution tokens for attribute names in the
ProjectionExpression parameter.


=head2 B<REQUIRED> Key => DynamoDB_Key

  A map of attribute names to C<AttributeValue> objects that specifies
the primary key of the item to retrieve.


=head2 ProjectionExpression => Str

  A string that identifies one or more attributes of the specified item
to retrieve from the table. The attributes in the expression must be
separated by commas. If no attribute names are specified, then all
attributes of the specified item are returned. If any of the requested
attributes are not found, they do not appear in the result.


=head2 B<REQUIRED> TableName => Str

  The name of the table from which to retrieve the specified item.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

