// RtpAsfMuxer.h

#ifndef _PPBOX_MUX_RTP_RTP_ASF_MUXER_H_
#define _PPBOX_MUX_RTP_RTP_ASF_MUXER_H_

#include "ppbox/mux/asf/AsfMuxer.h"
#include "ppbox/mux/rtp/RtpMuxer.h"

namespace ppbox
{
    namespace mux
    {

        class RtpAsfTransfer;

        class RtpAsfMuxer
            : public RtpMuxer
        {
        public:
            RtpAsfMuxer();

            ~RtpAsfMuxer();

        public:
            virtual void media_info(
                MediaInfo & info) const;

        private:
            virtual void add_stream(
                StreamInfo & info, 
                std::vector<Transfer *> & transfers);

        private:
            AsfMuxer asf_mux_;
            RtpAsfTransfer * rtp_asf_transfer_;
        };

        PPBOX_REGISTER_MUXER("rtp-asf", RtpAsfMuxer);

    } // namespace mux
} // namespace ppbox

#endif // _PPBOX_MUX_RTP_RTP_ASF_MUXER_H_
