package Paws::EC2::TrafficMirrorSession;
  use Moo;  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::EC2::Types qw/EC2_Tag/;
  has Description => (is => 'ro', isa => Str);
  has NetworkInterfaceId => (is => 'ro', isa => Str);
  has OwnerId => (is => 'ro', isa => Str);
  has PacketLength => (is => 'ro', isa => Int);
  has SessionNumber => (is => 'ro', isa => Int);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has TrafficMirrorFilterId => (is => 'ro', isa => Str);
  has TrafficMirrorSessionId => (is => 'ro', isa => Str);
  has TrafficMirrorTargetId => (is => 'ro', isa => Str);
  has VirtualNetworkId => (is => 'ro', isa => Int);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'TrafficMirrorFilterId' => {
                                            'type' => 'Str'
                                          },
               'TrafficMirrorSessionId' => {
                                             'type' => 'Str'
                                           },
               'SessionNumber' => {
                                    'type' => 'Int'
                                  },
               'OwnerId' => {
                              'type' => 'Str'
                            },
               'TrafficMirrorTargetId' => {
                                            'type' => 'Str'
                                          },
               'VirtualNetworkId' => {
                                       'type' => 'Int'
                                     },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'PacketLength' => {
                                   'type' => 'Int'
                                 }
             },
  'NameInRequest' => {
                       'TrafficMirrorFilterId' => 'trafficMirrorFilterId',
                       'TrafficMirrorSessionId' => 'trafficMirrorSessionId',
                       'SessionNumber' => 'sessionNumber',
                       'OwnerId' => 'ownerId',
                       'TrafficMirrorTargetId' => 'trafficMirrorTargetId',
                       'VirtualNetworkId' => 'virtualNetworkId',
                       'NetworkInterfaceId' => 'networkInterfaceId',
                       'Tags' => 'tagSet',
                       'Description' => 'description',
                       'PacketLength' => 'packetLength'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TrafficMirrorSession

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TrafficMirrorSession object:

  $service_obj->Method(Att1 => { Description => $value, ..., VirtualNetworkId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TrafficMirrorSession object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the Traffic Mirror session.


=head2 NetworkInterfaceId => Str

  The ID of the Traffic Mirror session's network interface.


=head2 OwnerId => Str

  The ID of the account that owns the Traffic Mirror session.


=head2 PacketLength => Int

  The number of bytes in each packet to mirror. These are the bytes after
the VXLAN header. To mirror a subset, set this to the length (in bytes)
to mirror. For example, if you set this value to 100, then the first
100 bytes that meet the filter criteria are copied to the target. Do
not specify this parameter when you want to mirror the entire packet


=head2 SessionNumber => Int

  The session number determines the order in which sessions are evaluated
when an interface is used by multiple sessions. The first session with
a matching filter is the one that mirrors the packets.

Valid values are 1-32766.


=head2 Tags => ArrayRef[EC2_Tag]

  The tags assigned to the Traffic Mirror session.


=head2 TrafficMirrorFilterId => Str

  The ID of the Traffic Mirror filter.


=head2 TrafficMirrorSessionId => Str

  The ID for the Traffic Mirror session.


=head2 TrafficMirrorTargetId => Str

  The ID of the Traffic Mirror target.


=head2 VirtualNetworkId => Int

  The virtual network ID associated with the Traffic Mirror session.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
