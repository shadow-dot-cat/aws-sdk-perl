
package Paws::DynamoDB::Query {
  use Moose;
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str]');
  has ConditionalOperator => (is => 'ro', isa => 'Str');
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has ExclusiveStartKey => (is => 'ro', isa => 'Paws::DynamoDB::Key');
  has ExpressionAttributeNames => (is => 'ro', isa => 'Paws::DynamoDB::ExpressionAttributeNameMap');
  has ExpressionAttributeValues => (is => 'ro', isa => 'Paws::DynamoDB::ExpressionAttributeValueMap');
  has FilterExpression => (is => 'ro', isa => 'Str');
  has IndexName => (is => 'ro', isa => 'Str');
  has KeyConditions => (is => 'ro', isa => 'Paws::DynamoDB::KeyConditions', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has ProjectionExpression => (is => 'ro', isa => 'Str');
  has QueryFilter => (is => 'ro', isa => 'Paws::DynamoDB::FilterConditionMap');
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ScanIndexForward => (is => 'ro', isa => 'Bool');
  has Select => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Query');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::QueryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::Query - Arguments for method Query on Paws::DynamoDB

=head1 DESCRIPTION

This class represents the parameters used for calling the method Query on the 
Amazon DynamoDB service. Use the attributes of this class
as arguments to method Query.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to Query.

As an example:

  $service_obj->Query(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 AttributesToGet => ArrayRef[Str]

  

There is a newer parameter available. Use I<ProjectionExpression>
instead. Note that if you use I<AttributesToGet> and
I<ProjectionExpression> at the same time, DynamoDB will return a
I<ValidationException> exception.

This parameter allows you to retrieve lists or maps; however, it cannot
retrieve individual list or map elements.

The names of one or more attributes to retrieve. If no attribute names
are specified, then all attributes will be returned. If any of the
requested attributes are not found, they will not appear in the result.

Note that I<AttributesToGet> has no effect on provisioned throughput
consumption. DynamoDB determines capacity units consumed based on item
size, not on the amount of data that is returned to an application.

You cannot use both I<AttributesToGet> and I<Select> together in a
I<Query> request, I<unless> the value for I<Select> is
C<SPECIFIC_ATTRIBUTES>. (This usage is equivalent to specifying
I<AttributesToGet> without any value for I<Select>.)

If you query a local secondary index and request only attributes that
are projected into that index, the operation will read only the index
and not the table. If any of the requested attributes are not projected
into the local secondary index, DynamoDB will fetch each of these
attributes from the parent table. This extra fetching incurs additional
throughput cost and latency.

If you query a global secondary index, you can only request attributes
that are projected into the index. Global secondary index queries
cannot fetch attributes from the parent table.










=head2 ConditionalOperator => Str

  

There is a newer parameter available. Use I<ConditionExpression>
instead. Note that if you use I<ConditionalOperator> and I<
ConditionExpression > at the same time, DynamoDB will return a
I<ValidationException> exception.

This parameter does not support lists or maps.

A logical operator to apply to the conditions in the I<QueryFilter>
map:

=over

=item *

C<AND> - If all of the conditions evaluate to true, then the entire map
evaluates to true.

=item *

C<OR> - If at least one of the conditions evaluate to true, then the
entire map evaluates to true.

=back

If you omit I<ConditionalOperator>, then C<AND> is the default.

The operation will succeed only if the entire map evaluates to true.










=head2 ConsistentRead => Bool

  

A value that if set to C<true>, then the operation uses strongly
consistent reads; otherwise, eventually consistent reads are used.

Strongly consistent reads are not supported on global secondary
indexes. If you query a global secondary index with I<ConsistentRead>
set to C<true>, you will receive an error message.










=head2 ExclusiveStartKey => Paws::DynamoDB::Key

  

The primary key of the first item that this operation will evaluate.
Use the value that was returned for I<LastEvaluatedKey> in the previous
operation.

The data type for I<ExclusiveStartKey> must be String, Number or
Binary. No set data types are allowed.










=head2 ExpressionAttributeNames => Paws::DynamoDB::ExpressionAttributeNameMap

  

One or more substitution tokens for simplifying complex expressions.
The following are some use cases for an I<ExpressionAttributeNames>
value:

=over

=item *

To shorten an attribute name that is very long or unwieldy in an
expression.

=item *

To create a placeholder for repeating occurrences of an attribute name
in an expression.

=item *

To prevent special characters in an attribute name from being
misinterpreted in an expression.

=back

Use the B<
name. For example, consider the following expression:

=over

=item *

C<order.customerInfo.LastName = "Smith" OR order.customerInfo.LastName
= "Jones">

=back

Now suppose that you specified the following for
I<ExpressionAttributeNames>:

=over

=item *

C<{"n":"order.customerInfo.LastName"}>

=back

The expression can now be simplified as follows:

=over

=item *

C<

=back










=head2 ExpressionAttributeValues => Paws::DynamoDB::ExpressionAttributeValueMap

  

One or more values that can be substituted in an expression.

Use the B<:> character in an expression to dereference an attribute
value. For example, consider the following expression:

=over

=item *

C<ProductStatus IN ("Available","Backordered","Discontinued")>

=back

Now suppose that you specified the following for
I<ExpressionAttributeValues>:

=over

=item *

C<{ "a":{"S":"Available"}, "b":{"S":"Backordered"},
"d":{"S":"Discontinued"} }>

=back

The expression can now be simplified as follows:

=over

=item *

C<ProductStatus IN (:a,:b,:c)>

=back










=head2 FilterExpression => Str

  

A condition that evaluates the query results and returns only the
desired values.

The condition you specify is applied to the items queried; any items
that do not match the expression are not returned.










=head2 IndexName => Str

  

The name of an index to query. This index can be any local secondary
index or global secondary index on the table.










=head2 B<REQUIRED> KeyConditions => Paws::DynamoDB::KeyConditions

  

The selection criteria for the query. For a query on a table, you can
have conditions only on the table primary key attributes. You must
specify the hash key attribute name and value as an C<EQ> condition.
You can optionally specify a second condition, referring to the range
key attribute.

For a query on an index, you can have conditions only on the index key
attributes. You must specify the index hash attribute name and value as
an EQ condition. You can optionally specify a second condition,
referring to the index key range attribute.

Each I<KeyConditions> element consists of an attribute name to compare,
along with the following:

=over

=item *

I<AttributeValueList> - One or more values to evaluate against the
supplied attribute. The number of values in the list depends on the
I<ComparisonOperator> being used.

For type Number, value comparisons are numeric.

String value comparisons for greater than, equals, or less than are
based on ASCII character code values. For example, C<a> is greater than
C<A>, and C<aa> is greater than C<B>. For a list of code values, see
http://en.wikipedia.org/wiki/ASCII

For Binary, DynamoDB treats each byte of the binary data as unsigned
when it compares binary values, for example when evaluating query
expressions.

=item *

I<ComparisonOperator> - A comparator for evaluating attributes, for
example, equals, greater than, less than, and so on.

For I<KeyConditions>, only the following comparison operators are
supported:

C<EQ | LE | LT | GE | GT | BEGINS_WITH | BETWEEN>

The following are descriptions of these comparison operators.

=over

=item *

C<EQ> : Equal.

I<AttributeValueList> can contain only one I<AttributeValue> of type
String, Number, or Binary (not a set type). If an item contains an
I<AttributeValue> element of a different type than the one specified in
the request, the value does not match. For example, C<{"S":"6"}> does
not equal C<{"N":"6"}>. Also, C<{"N":"6"}> does not equal C<{"NS":["6",
"2", "1"]}>.

=item *

C<LE> : Less than or equal.

I<AttributeValueList> can contain only one I<AttributeValue> element of
type String, Number, or Binary (not a set type). If an item contains an
I<AttributeValue> element of a different type than the one specified in
the request, the value does not match. For example, C<{"S":"6"}> does
not equal C<{"N":"6"}>. Also, C<{"N":"6"}> does not compare to
C<{"NS":["6", "2", "1"]}>.

=item *

C<LT> : Less than.

I<AttributeValueList> can contain only one I<AttributeValue> of type
String, Number, or Binary (not a set type). If an item contains an
I<AttributeValue> element of a different type than the one specified in
the request, the value does not match. For example, C<{"S":"6"}> does
not equal C<{"N":"6"}>. Also, C<{"N":"6"}> does not compare to
C<{"NS":["6", "2", "1"]}>.

=item *

C<GE> : Greater than or equal.

I<AttributeValueList> can contain only one I<AttributeValue> element of
type String, Number, or Binary (not a set type). If an item contains an
I<AttributeValue> element of a different type than the one specified in
the request, the value does not match. For example, C<{"S":"6"}> does
not equal C<{"N":"6"}>. Also, C<{"N":"6"}> does not compare to
C<{"NS":["6", "2", "1"]}>.

=item *

C<GT> : Greater than.

I<AttributeValueList> can contain only one I<AttributeValue> element of
type String, Number, or Binary (not a set type). If an item contains an
I<AttributeValue> element of a different type than the one specified in
the request, the value does not match. For example, C<{"S":"6"}> does
not equal C<{"N":"6"}>. Also, C<{"N":"6"}> does not compare to
C<{"NS":["6", "2", "1"]}>.

=item *

C<BEGINS_WITH> : Checks for a prefix.

I<AttributeValueList> can contain only one I<AttributeValue> of type
String or Binary (not a Number or a set type). The target attribute of
the comparison must be of type String or Binary (not a Number or a set
type).

=item *

C<BETWEEN> : Greater than or equal to the first value, and less than or
equal to the second value.

I<AttributeValueList> must contain two I<AttributeValue> elements of
the same type, either String, Number, or Binary (not a set type). A
target attribute matches if the target value is greater than, or equal
to, the first element and less than, or equal to, the second element.
If an item contains an I<AttributeValue> element of a different type
than the one specified in the request, the value does not match. For
example, C<{"S":"6"}> does not compare to C<{"N":"6"}>. Also,
C<{"N":"6"}> does not compare to C<{"NS":["6", "2", "1"]}>

=back

=back

For usage examples of I<AttributeValueList> and I<ComparisonOperator>,
see Legacy Conditional Parameters in the I<Amazon DynamoDB Developer
Guide>.










=head2 Limit => Int

  

The maximum number of items to evaluate (not necessarily the number of
matching items). If DynamoDB processes the number of items up to the
limit while processing the results, it stops the operation and returns
the matching values up to that point, and a key in I<LastEvaluatedKey>
to apply in a subsequent operation, so that you can pick up where you
left off. Also, if the processed data set size exceeds 1 MB before
DynamoDB reaches this limit, it stops the operation and returns the
matching values up to the limit, and a key in I<LastEvaluatedKey> to
apply in a subsequent operation to continue the operation. For more
information, see Query and Scan in the I<Amazon DynamoDB Developer
Guide>.










=head2 ProjectionExpression => Str

  

One or more attributes to retrieve from the table. These attributes can
include scalars, sets, or elements of a JSON document. The attributes
in the expression must be separated by commas.

If no attribute names are specified, then all attributes will be
returned. If any of the requested attributes are not found, they will
not appear in the result.










=head2 QueryFilter => Paws::DynamoDB::FilterConditionMap

  

There is a newer parameter available. Use I<FilterExpression> instead.
Note that if you use I<QueryFilter> and I<FilterExpression> at the same
time, DynamoDB will return a I<ValidationException> exception.

This parameter does not support lists or maps.

A condition that evaluates the query results and returns only the
desired values.

If you specify more than one condition in the I<QueryFilter> map, then
by default all of the conditions must evaluate to true. In other words,
the conditions are ANDed together. (You can use the
I<ConditionalOperator> parameter to OR the conditions instead. If you
do this, then at least one of the conditions must evaluate to true,
rather than all of them.)

Each I<QueryFilter> element consists of an attribute name to compare,
along with the following:

=over

=item *

I<AttributeValueList> - One or more values to evaluate against the
supplied attribute. The number of values in the list depends on the
operator specified in I<ComparisonOperator>.

For type Number, value comparisons are numeric.

String value comparisons for greater than, equals, or less than are
based on ASCII character code values. For example, C<a> is greater than
C<A>, and C<aa> is greater than C<B>. For a list of code values, see
http://en.wikipedia.org/wiki/ASCII

For type Binary, DynamoDB treats each byte of the binary data as
unsigned when it compares binary values, for example when evaluating
query expressions.

For information on specifying data types in JSON, see JSON Data Format
in the I<Amazon DynamoDB Developer Guide>.

=item *

I<ComparisonOperator> - A comparator for evaluating attributes. For
example, equals, greater than, less than, etc.

The following comparison operators are available:

C<EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS |
NOT_CONTAINS | BEGINS_WITH | IN | BETWEEN>

For complete descriptions of all comparison operators, see
API_Condition.html.

=back










=head2 ReturnConsumedCapacity => Str

  

=head2 ScanIndexForward => Bool

  

A value that specifies ascending (true) or descending (false) traversal
of the index. DynamoDB returns results reflecting the requested order
determined by the range key. If the data type is Number, the results
are returned in numeric order. For type String, the results are
returned in order of ASCII character code values. For type Binary,
DynamoDB treats each byte of the binary data as unsigned when it
compares binary values.

If I<ScanIndexForward> is not specified, the results are returned in
ascending order.










=head2 Select => Str

  

The attributes to be returned in the result. You can retrieve all item
attributes, specific item attributes, the count of matching items, or
in the case of an index, some or all of the attributes projected into
the index.

=over

=item *

C<ALL_ATTRIBUTES> - Returns all of the item attributes from the
specified table or index. If you query a local secondary index, then
for each matching item in the index DynamoDB will fetch the entire item
from the parent table. If the index is configured to project all item
attributes, then all of the data can be obtained from the local
secondary index, and no fetching is required.

=item *

C<ALL_PROJECTED_ATTRIBUTES> - Allowed only when querying an index.
Retrieves all attributes that have been projected into the index. If
the index is configured to project all attributes, this return value is
equivalent to specifying C<ALL_ATTRIBUTES>.

=item *

C<COUNT> - Returns the number of matching items, rather than the
matching items themselves.

=item *

C<SPECIFIC_ATTRIBUTES> - Returns only the attributes listed in
I<AttributesToGet>. This return value is equivalent to specifying
I<AttributesToGet> without specifying any value for I<Select>.

If you query a local secondary index and request only attributes that
are projected into that index, the operation will read only the index
and not the table. If any of the requested attributes are not projected
into the local secondary index, DynamoDB will fetch each of these
attributes from the parent table. This extra fetching incurs additional
throughput cost and latency.

If you query a global secondary index, you can only request attributes
that are projected into the index. Global secondary index queries
cannot fetch attributes from the parent table.

=back

If neither I<Select> nor I<AttributesToGet> are specified, DynamoDB
defaults to C<ALL_ATTRIBUTES> when accessing a table, and
C<ALL_PROJECTED_ATTRIBUTES> when accessing an index. You cannot use
both I<Select> and I<AttributesToGet> together in a single request,
unless the value for I<Select> is C<SPECIFIC_ATTRIBUTES>. (This usage
is equivalent to specifying I<AttributesToGet> without any value for
I<Select>.)










=head2 B<REQUIRED> TableName => Str

  

The name of the table containing the requested items.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for Query in Paws::DynamoDB

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

