package Paws::EC2::SpotOptions;
  use Moo;  use Types::Standard qw/Str Int Bool/;
  use Paws::EC2::Types qw//;
  has AllocationStrategy => (is => 'ro', isa => Str);
  has InstanceInterruptionBehavior => (is => 'ro', isa => Str);
  has InstancePoolsToUseCount => (is => 'ro', isa => Int);
  has MaxTotalPrice => (is => 'ro', isa => Str);
  has MinTargetCapacity => (is => 'ro', isa => Int);
  has SingleAvailabilityZone => (is => 'ro', isa => Bool);
  has SingleInstanceType => (is => 'ro', isa => Bool);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceInterruptionBehavior' => {
                                                   'type' => 'Str'
                                                 },
               'MaxTotalPrice' => {
                                    'type' => 'Str'
                                  },
               'SingleAvailabilityZone' => {
                                             'type' => 'Bool'
                                           },
               'MinTargetCapacity' => {
                                        'type' => 'Int'
                                      },
               'AllocationStrategy' => {
                                         'type' => 'Str'
                                       },
               'SingleInstanceType' => {
                                         'type' => 'Bool'
                                       },
               'InstancePoolsToUseCount' => {
                                              'type' => 'Int'
                                            }
             },
  'NameInRequest' => {
                       'InstanceInterruptionBehavior' => 'instanceInterruptionBehavior',
                       'MaxTotalPrice' => 'maxTotalPrice',
                       'SingleAvailabilityZone' => 'singleAvailabilityZone',
                       'MinTargetCapacity' => 'minTargetCapacity',
                       'AllocationStrategy' => 'allocationStrategy',
                       'SingleInstanceType' => 'singleInstanceType',
                       'InstancePoolsToUseCount' => 'instancePoolsToUseCount'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SpotOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SpotOptions object:

  $service_obj->Method(Att1 => { AllocationStrategy => $value, ..., SingleInstanceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SpotOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationStrategy

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllocationStrategy => Str

  Indicates how to allocate the target capacity across the Spot pools
specified by the Spot Fleet request. The default is C<lowest-price>.


=head2 InstanceInterruptionBehavior => Str

  The behavior when a Spot Instance is interrupted. The default is
C<terminate>.


=head2 InstancePoolsToUseCount => Int

  The number of Spot pools across which to allocate your target Spot
capacity. Valid only when B<AllocationStrategy> is set to
C<lowestPrice>. EC2 Fleet selects the cheapest Spot pools and evenly
allocates your target Spot capacity across the number of Spot pools
that you specify.


=head2 MaxTotalPrice => Str

  The maximum amount per hour for Spot Instances that you're willing to
pay.


=head2 MinTargetCapacity => Int

  The minimum target capacity for Spot Instances in the fleet. If the
minimum target capacity is not reached, the fleet launches no
instances.


=head2 SingleAvailabilityZone => Bool

  Indicates that the fleet launches all Spot Instances into a single
Availability Zone.


=head2 SingleInstanceType => Bool

  Indicates that the fleet uses a single instance type to launch all Spot
Instances in the fleet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
