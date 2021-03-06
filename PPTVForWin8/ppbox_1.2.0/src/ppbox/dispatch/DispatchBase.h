// DispatchBase.h

#ifndef _PPBOX_DISPATCH_DISPATCH_BASE_H_
#define _PPBOX_DISPATCH_DISPATCH_BASE_H_

#include <ppbox/data/base/MediaInfo.h>
#include <ppbox/data/base/StreamStatus.h>
#include <ppbox/avformat/Format.h>

#include <framework/string/Url.h>

#include <boost/function.hpp>

namespace ppbox
{
    namespace dispatch
    {

        using ppbox::data::MediaInfo;
        using ppbox::data::StreamStatus;
        using ppbox::avformat::Sample;
        using ppbox::avformat::StreamInfo;

        typedef boost::function<void (
            boost::system::error_code const &)> response_t;

        class DispatcherBase;
        class Sink;

        static char const * const param_playlink = "playlink";
        static char const * const param_format = "format";
        static char const * const param_session = "session";

        struct SeekRange
        {
            enum TypeEnum
            {
                none, 
                byte, 
                time, 
            };

            SeekRange()
                : type(none)
                , beg(0)
                , end(0)
            {
            }

            SeekRange(
                TypeEnum type, 
                boost::uint64_t beg)
                : type(type)
                , beg(beg)
                , end(0)
            {
            }

            SeekRange(
                TypeEnum type, 
                boost::uint64_t beg, 
                boost::uint64_t end)
                : type(type)
                , beg(beg)
                , end(end)
            {
            }

            TypeEnum type;
            boost::uint64_t beg; 
            boost::uint64_t end; 
        };

    } // namespace dispatch
} // namespace ppbox

#endif // _PPBOX_DISPATCH_DISPATCH_BASE_H_
