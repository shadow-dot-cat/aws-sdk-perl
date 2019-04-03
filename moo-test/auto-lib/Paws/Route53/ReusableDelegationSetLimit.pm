package Paws::Route53::ReusableDelegationSetLimit;
  use Moose;
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ReusableDelegationSetLimit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::ReusableDelegationSetLimit object:

  $service_obj->Method(Att1 => { Type => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::ReusableDelegationSetLimit object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

A complex type that contains the type of limit that you specified in
the request and the current value for that limit.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Type => Str

  The limit that you requested: C<MAX_ZONES_BY_REUSABLE_DELEGATION_SET>,
the maximum number of hosted zones that you can associate with the
specified reusable delegation set.


=head2 B<REQUIRED> Value => Int

  The current value for the C<MAX_ZONES_BY_REUSABLE_DELEGATION_SET>
limit.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

